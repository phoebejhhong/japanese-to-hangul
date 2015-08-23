require 'net/http'

class YahooApi
  APP_KEY = ENV("APP_KEY")
  BASE_URL = "http://jlp.yahooapis.jp/FuriganaService/V1/furigana"

  def self.convert(string)
    uri = URI(self::BASE_URL)
    params = { sentence: string, appid: self::APP_KEY}
    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get_response(uri)
    puts res.body
  end
end
