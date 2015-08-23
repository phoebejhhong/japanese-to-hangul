require './app/app'
require 'dotenv'
Dotenv.load
require 'pry'

RSpec.describe KanaHangulApp, "#furigana" do
  context "with kana bases" do
    it "converts base kanas to furigana" do
      app = KanaHangulApp.new
      string = "色は匂へど 散りぬるを 我が世誰ぞ 常ならむ 有為の奥山 今日越えて 浅き夢見じ 酔ひもせず"
      converted_string = app.convert_to_furigana(string)
      expected_string = "いろはにおいへど ちりぬるを わがよだれぞ つねならむ ういのおくやま きょうこえて あさきゆめみじ よいひもせず"
      expect(converted_string).to eq expected_string
    end

    it "converts base kanas to hangul" do
      app = KanaHangulApp.new
      string = "色は匂へど 散りぬるを 我が世誰ぞ 常ならむ 有為の奥山 今日越えて 浅き夢見じ 酔ひもせず"
      converted_string = app.convert_kana_to_hangul(string)
      expected_string = "이로하니오이헤도 치리누루오 와가요다레조 츠네나라무 우이노오쿠야마 쿄우코에테 아사키유메미지 요이히모세즈"
      expect(converted_string).to eq expected_string
    end
  end
end
