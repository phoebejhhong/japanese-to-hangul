require 'sinatra'
require 'dotenv'
Dotenv.load

require './app/app'

get "/" do
  send_file "public/index.html"
end

post "/convert" do
  app = KanaHangulApp.new
  converted = app.convert_kana_to_hangul(request.params["japanese-input"])
end
