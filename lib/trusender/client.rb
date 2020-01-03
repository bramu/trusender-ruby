class TruSender::Client
  require 'net/http'
	require 'net/https'
	require 'uri'
  require 'json'
  
  def initialize
    @host = "https://api.trusender.com/v1"
  end

  def send(url, post_data)
    uri = URI.parse(@host + url)

		https = Net::HTTP.new(uri.host,uri.port)
		https.use_ssl = true
    req = Net::HTTP::Post.new(uri.request_uri)
    req['Accept'] = 'application/json'
    req['Content-Type'] = 'application/json'
    req.body = post_data.to_json
    
    response = https.request(req)
    
    if response.code.to_i == 200
			response_body = JSON.parse(response.body) rescue nil
			unless response_body.nil?
				if response_body["statusCode"] == 200
					return response_body['body']
				else
					return {success: false, error: response_body["errors"]}	
				end
			end
		elsif response.code.to_i == 403
			return {success: false, error: "Invalid Auth Token"}
		else
			return {success: false, error: "Failed!!!"}
		end
  end
end
