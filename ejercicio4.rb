require 'uri'
require 'net/http'
require 'json'

def request(url_requested)
    url = URI(url_requested)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'
    request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'
    response = http.request(request)
    return JSON.parse(response.body)
end

data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=IUkUZE0jgZ92idaxMEOCu8KmWhDbAsnGclMQfZsU')
puts data

photos = []
data["photos"].each do |h|
    photos << h["img_src"]
end

# p photos
def build_web_page(hash)
    html = "<html>
    <head>
    </head>
    <body>
    <ul>
    "
    hash.each do |i|
        html += "<li><img src='#{i}'></li>\n"
    end
    html += "</ul>\n</body>\n</html>\n"
    File.write('output.html', html)
end

build_web_page(photos)

cameras = {}
def photos_count(data_hash, result_hash)
    data_hash["photos"].each do |h|
        h["camera"].each do |c,v|
            if c == "name"
                if result_hash.key?(v)
                    result_hash[v] += 1
                else   
                    result_hash[v] = 1
                end
            end
        end
    end
end

photos_count(data, cameras)
puts cameras
