# 일본어를 한글로 (Japanese to Hangul)

![alt text] [screen-shot]

일본어 텍스트를 한글로 바꿔주는 웹 어플리케이션입니다.
번역은 전혀 하지 않으며, 단지 일본어 발음 표기를 도와줍니다.
[야후 재팬의 텍스트 분석 API][yahoo-api-link]를 사용하는 [시나트라][sinatra-link]앱입니다.

This is a web app that converts Japanese text to Hangul, the Korean alphabets. Not being a translator of any sort, it just helps you pronounce Japanese easily. It is a [Sinatra][sinatra-link] app and uses Yahoo Japan's [Languge Processing Api][yahoo-api-link].

## 설치와 사용 Installation and Usage

[루비][ruby-link]를 먼저 설치한 후 다음 명령어를 입력하세요.

Install [Ruby][ruby-link] if you haven't. Then execute

```
  $ git clone https://github.com/phoebejhhong/japanese-to-hangul.git
  $ cd japanese-to-hangul
  $ bundle install
  $ ruby server.rb
```

그런 다음 http://localhost:4567/ 에 들어가세요.

Then go to http://localhost:4567/

[screen-shot]: japanese-to-hangul-screenshot.png "Japanese to Hangul"
[yahoo-api-link]: http://developer.yahoo.co.jp/webapi/jlp/furigana/v1/furigana.html
[ruby-link]: https://www.ruby-lang.org/en/downloads/
[sinatra-link]: http://www.sinatrarb.com/
