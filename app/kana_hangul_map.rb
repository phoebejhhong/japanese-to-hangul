class KanaHangulMap
  HIRAGANA_BASE =
    "あいうえお
    かきくけこ
    さしすせそ
    たちつてと
    なにぬねの
    はひふへほ
    まみむめも
    やゆよ
    らりるれろ
    わを
    がぎぐげご
    ざじずぜぞ
    だぢづでど
    ばびぶべぼ
    ぱぴぷぺぽ".split("").delete_if {|el| el[/\s/]}

  HIRAGANA_N =
    "あん いん うん えん おん
    かん きん くん けん こん
    さん しん すん せん そん
    たん ちん つん てん とん
    なん にん ぬん ねん のん
    はん ひん ふん へん ほん
    まん みん むん めん もん
    やん ゆん よん
    らん りん るん れん ろん
    わん をん
    がん ぎん ぐん げん ごん
    ざん じん ずん ぜん ぞん
    だん ぢん づん でん どん
    ばん びん ぶん べん ぼん
    ぱん ぴん ぷん ぺん ぽん".split(" ").delete_if {|el| el[/\s/]}

  HIRAGANA_YOON =
    "きゃ しゃ にゃ みゃ りゃ ぎゃ じゃ びゃ ぴゃ
    きゅ しゅ にゅ みゅ りゅ ぎゅ じゅ びゅ ぴゅ
    きょ しょ にょ みょ りょ ぎょ じょ びょ ぴょ"
    .split(" ").delete_if {|el| el[/\s/]}

  HIRAGANA_SOKUON =
    "あっ いっ うっ えっ おっ
    かっ きっ くっ けっ こっ
    さっ しっ すっ せっ そっ
    たっ ちっ つっ てっ とっ
    なっ にっ ぬっ ねっ のっ
    はっ ひっ ふっ へっ ほっ
    まっ みっ むっ めっ もっ
    やっ ゆっ よっ
    らっ りっ るっ れっ ろっ
    わっ をっ
    がっ ぎっ ぐっ げっ ごっ
    ざっ じっ ずっ ぜっ ぞっ
    だっ ぢっ づっ でっ どっ
    ばっ びっ ぶっ べっ ぼっ
    ぱっ ぴっ ぷっ ぺっ ぽっ".split(" ").delete_if {|el| el[/\s/]}

  HIRAGANA_YOON_N =
    "きゃん しゃん にゃん みゃん りゃん ぎゃん じゃん びゃん ぴゃん
    きゅん しゅん にゅん みゅん りゅん ぎゅん じゅん びゅん ぴゅん
    きょん しょん にょん みょん りょん ぎょん じょん びょん ぴょん"
    .split(" ").delete_if {|el| el[/\s/]}

  HIRAGANA_YOON_SOKUON =
    "きゃっ しゃっ にゃっ みゃっ りゃっ ぎゃっ じゃっ びゃっ ぴゃっ
    きゅっ しゅっ にゅっ みゅっ りゅっ ぎゅっ じゅっ びゅっ ぴゅっ
    きょっ しょっ にょっ みょっ りょっ ぎょっ じょっ びょっ ぴょっ"
    .split(" ").delete_if {|el| el[/\s/]}

  KATAKANA_BASE =
    "アイウエオ
    カキクケコ
    サシスセソ
    タチツテト
    ナニヌネノ
    ハヒフヘホ
    マミムメモ
    ヤユヨ
    ラリルレロ
    ワヲ
    ガギグゲゴ
    ザジズゼゾ
    ダヂヅデド
    バビブベボ
    パピプペポ".split("").delete_if {|el| el[/\s/]}

  KATAKANA_N =
    "アン イン ウン エン オン
    カン キン クン ケン コン
    サン シン スン セン ソン
    タン チン ツン テン トン
    ナン ニン ヌン ネン ノン
    ハン ヒン フン ヘン ホン
    マン ミン ムン メン モン
    ヤン ユン ヨン
    ラン リン ルン レン ロン
    ワン ヲン
    ガン ギン グン ゲン ゴン
    ザン ジン ズン ゼン ゾン
    ダン ヂン ヅン デン ドン
    バン ビン ブン ベン ボン
    パン ピン プン ペン ポン".split(" ").delete_if {|el| el[/\s/]}

  KATAKANA_YOON =
    "キャ シャ ニャ ミャ リャ ギャ ジャ ビャ ピャ
    キュ シュ ニュ ミュ リュ ギュ ジュ ビュ ピュ
    キョ ショ ニョ ミョ リョ ギョ ジョ ビョ ピョ"
    .split(" ").delete_if {|el| el[/\s/]}

  KATAKANA_SOKUON =
    "アッ イッ ウッ エッ オッ
    カッ キッ クッ ケッ コッ
    サッ シッ スッ セッ ソッ
    タッ チッ ツッ テッ トッ
    ナッ ニッ ヌッ ネッ ノッ
    ハッ ヒッ フッ ヘッ ホッ
    マッ ミッ ムッ メッ モッ
    ヤッ ユッ ヨッ
    ラッ リッ ルッ レッ ロッ
    ワッ ヲッ
    ガッ ギッ グッ ゲッ ゴッ
    ザッ ジッ ズッ ゼッ ゾッ
    ダッ ヂッ ヅッ デッ ドッ
    バッ ビッ ブッ ベッ ボッ
    パッ ピッ プッ ペッ ポッ".split(" ").delete_if {|el| el[/\s/]}

  KATAKANA_YOON_N =
    "キャン シャン ニャン ミャン リャン ギャン ジャン ビャン ピャン
    キュン シュン ニュン ミュン リュン ギュン ジュン ビュン ピュン
    キョン ション ニョン ミョン リョン ギョン ジョン ビョン ピョン"
    .split(" ").delete_if {|el| el[/\s/]}

  KATAKANA_YOON_SOKUON =
    "キャッ シャッ ニャッ ミャッ リャッ ギャッ ジャッ ビャッ ピャッ
    キュッ シュッ ニュッ ミュッ リュッ ギュッ ジュッ ビュッ ピュッ
    キョッ ショッ ニョッ ミョッ リョッ ギョッ ジョッ ビョッ ピョッ"
    .split(" ").delete_if {|el| el[/\s/]}

  HANGUL_BASE =
    "아이우에오
    카키쿠케코
    사시스세소
    타치츠테토
    나니누네노
    하히후헤호
    마미무메모
    야유요
    라리루레로
    와오
    가기구게고
    자지즈제조
    다지즈데도
    바비부베보
    파피푸페포".split("").delete_if {|el| el[/\s/]}

  HANGUL_N =
    "안인운엔온
    칸킨쿤켄콘
    산신슨센손
    탄친츤텐톤
    난닌눈넨논
    한힌훈헨혼
    만민문멘몬
    얀윤욘
    란린룬렌론
    완온
    간긴군겐곤
    잔진즌젠존
    단진즌덴돈
    반빈분벤본
    판핀푼펜폰".split("").delete_if {|el| el[/\s/]}

  HANGUL_YOON =
    "캬샤냐먀랴갸쟈뱌퍄
    큐슈뉴뮤류규쥬뷰퓨
    쿄쇼뇨묘료교죠뵤표".split("").delete_if {|el| el[/\s/]}

  HANGUL_SOKUON =
    "앗잇웃엣옷
    캇킷쿳켓콧
    삿싯슷셋솟
    탓칫츳텟톳
    낫닛눗넷놋
    핫힛훗헷홋
    맛밋뭇멧못
    얏윳욧
    랏릿룻렛롯
    왓옷
    갓깃굿겟곳
    잣짓즛젯좃
    닷짓즛뎃돗
    밧빗붓벳봇
    팟핏풋펫폿".split("").delete_if {|el| el[/\s/]}

  HANGUL_YOON_N =
    "캰샨냔먄랸갼쟌뱐퍈
    큔슌뉸뮨륜균쥰뷴퓬
    쿈숀뇬묜룐굔죤뵨푠".split("").delete_if {|el| el[/\s/]}

  HANGUL_YOON_SOKUON =
    "캿샷냣먓럇걋쟛뱐퍗
    큣슛늇뮷귯쥿븃퓻
    쿗숏뇻묫룟굣죳뵷푯".split("").delete_if {|el| el[/\s/]}

  KANA_HANGUL_MAP = Hash.new

  def initialize
    self.create_map
  end

  def create_map
    HIRAGANA_BASE.each_with_index do |hiragana, idx|
      KANA_HANGUL_MAP[hiragana] = HANGUL_BASE[idx]
    end
    KATAKANA_BASE.each_with_index do |katakana, idx|
      KANA_HANGUL_MAP[katakana] = HANGUL_BASE[idx]
    end

    HIRAGANA_N.each_with_index do |hiragana, idx|
      KANA_HANGUL_MAP[hiragana] = HANGUL_N[idx]
    end
    KATAKANA_N.each_with_index do |katakana, idx|
      KANA_HANGUL_MAP[katakana] = HANGUL_N[idx]
    end

    HIRAGANA_YOON.each_with_index do |hiragana, idx|
      KANA_HANGUL_MAP[hiragana] = HANGUL_YOON[idx]
    end
    KATAKANA_YOON.each_with_index do |katakana, idx|
      KANA_HANGUL_MAP[katakana] = HANGUL_YOON[idx]
    end

    HIRAGANA_SOKUON.each_with_index do |hiragana, idx|
      KANA_HANGUL_MAP[hiragana] = HANGUL_SOKUON[idx]
    end
    KATAKANA_SOKUON.each_with_index do |katakana, idx|
      KANA_HANGUL_MAP[katakana] = HANGUL_SOKUON[idx]
    end

    HIRAGANA_YOON_N.each_with_index do |hiragana, idx|
      KANA_HANGUL_MAP[hiragana] = HANGUL_YOON_N[idx]
    end
    KATAKANA_YOON_N.each_with_index do |katakana, idx|
      KANA_HANGUL_MAP[katakana] = HANGUL_YOON_N[idx]
    end

    HIRAGANA_YOON_SOKUON.each_with_index do |hiragana, idx|
      KANA_HANGUL_MAP[hiragana] = HANGUL_YOON_SOKUON[idx]
    end
    KATAKANA_YOON_SOKUON.each_with_index do |katakana, idx|
      KANA_HANGUL_MAP[katakana] = HANGUL_YOON_SOKUON[idx]
    end

  end

  def is_base?(char)
    HIRAGANA_BASE.include?(char) || KATAKANA_BASE.include?(char)
  end

  def convert(string)
    KANA_HANGUL_MAP[string] || string
  end

end
