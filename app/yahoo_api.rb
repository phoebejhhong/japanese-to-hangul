require 'net/http'

class YahooApi

  def self.convert(string)
    uri = build_uri(string)
    Net::HTTP.get_response(uri).body
  end

  def self.build_uri(string)
    uri = URI("http://jlp.yahooapis.jp/FuriganaService/V1/furigana")
    params = { sentence: string, appid: ENV['APP_KEY']}
    uri.query = URI.encode_www_form(params)

    uri
  end
end
