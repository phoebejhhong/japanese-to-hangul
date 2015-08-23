require_relative './kana_hangul_map'
require_relative './yahoo_api'
require 'nokogiri'

class KanaHangulApp
  attr_accessor :mapper

  def initialize
    self.mapper = KanaHangulMap.new
  end

  def convert_to_furigana(string)
    xml = YahooApi.convert(string)
    parse_XML(xml)
  end

  def parse_XML(xml)
    words = Nokogiri::XML(xml).css("Word")
    result = ""
    words.each do |word|
      if word.css("Furigana").empty?
        result += word.css("Surface").children.first.content
      else
        result += word.css("Furigana").children.first.content
      end
    end

    result
  end

  def convert_kana_to_hangul(string)
    string = convert_to_furigana(string)

    result = ""
    current_substring = ""
    string.split("").each do |char|
      # ignore long vowels
      # 장음 무시
      next if char == "ー"
      if mapper.is_base?(char)
        if current_substring.size == 0
          current_substring += char
        else
          result += mapper.convert(current_substring)
          current_substring = char
        end
      elsif char =~ /\p{Hiragana}|\p{Katakana}/
        current_substring += char
      else
        result += mapper.convert(current_substring) + char
        current_substring = ""
      end
    end

    result += mapper.convert(current_substring)

    return result
  end

end
