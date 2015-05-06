require_relative './kana_hangul_map'
# require 'kakasi'

class KanaHangulApp
  attr_accessor :mapper

  def initialize
    self.mapper = KanaHangulMap.new
  end

  def convert_to_furigana(string)
    Kakasi.kakasi("-JH", string)
  end

  def convert_kana_to_hangul(string)
    string = convert_to_furigana(string)

    result = ""
    current_substring = ""
    string.split("").each do |char|
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

    return result
  end

end
