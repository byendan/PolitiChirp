def fill_pundits(pundits)
  handles = pundits.collect {|p| p.twitter_handle }.join ','
  
  baseurl = "https://api.twitter.com"
  path    = "/1.1/users/lookup.json"
  query   = "#{handles}"
  address = URI("#{baseurl}#{path}?screen_name=#{query}")
  request = Net::HTTP::Get.new address.request_uri
  
  # Set up HTTP.
  http             = Net::HTTP.new address.host, address.port
  http.use_ssl     = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  
  consumer_key = OAuth::Consumer.new(
    ENV["twitter_consumer_key"],
    ENV["twitter_consumer_secret"])
  access_token = OAuth::Token.new(
    ENV["twitter_access_token"],
    ENV["twitter_access_secret"])
    
  # Issue the request.
  request.oauth! http, consumer_key, access_token
  http.start
  response = http.request request
  
  
  # Parse and print the Tweet if the response code was 200
  tweet = nil
  if response.code == '200' then
    tweets = JSON.parse(response.body)
    return pundit_info(tweets)
  end
  return nil
end

private
  def pundit_info(tweets)
    pundits = []
    tweets.each do |tweet|
      pundit = {
        name:         tweet["name"],
        screen_name:  tweet["screen_name"],
        avatar:       tweet["profile_image_url"],
        last_tweet:   tweet["status"]["text"],
        link:         tweet["url"]
      }
      pundits.push(pundit)
    end
    return pundits
  end