#
# 数字
#

# 全て数値（全角）
/\A[０-９]+\z/

# 全て数値（半角）
/\A[0-9]+\z/

# 全て数値（全角,半角）
/\A[0-9０-９]+\z/

# 全て全角数値（マイナス、小数点）
/\A[ー]?[０-９]+(\．[０-９]+)?\z/

# 全て半角数値（マイナス、小数点）
/\A[-]?[0-9]+(\.[0-9]+)?\z/

#
# 文字
#

# 半角アルファベット（小文字）
/\A[a-z]+\z/

# 半角アルファベット（大文字）
 /\A[A-Z]+\z/

# 半角アルファベット（大文字・小文字）
 /\A[a-zA-Z]+\z/

# 半角アルファベット（小文字・数値）
/\A[a-z0-9]+\z/

# 半角アルファベット（大文字・数値）
/\A[A-Z0-9]+\z/

# 半角アルファベット（大文字・小文字・数値）
/\A[a-zA-Z0-9]+\z/

# 全角ひらがな
/\A[ぁ-んー－]+\z/

# 全角カタカナ
/\A[ァ-ヶー－]+\z/

# 全角ひらがな、カタカナ
/\A[ぁ-んァ-ヶー－]+\z/

# 半角カナ
/\A[ｧ-ﾝﾞﾟ]+\z/

# 漢字
/\A[一-龥]+\z/

# 全角ひらがな、漢字
/\A[一-龥ぁ-ん]/

# 全角ひらがな、全角カタカナ、漢字
/\A[ぁ-んァ-ン一-龥]/

# 全角ひらがな、全角カタカナ、漢字（鬼車）
/\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/

#
# 郵便番号
#

# 郵便番号（ハイフンあり3桁・5桁・7桁）
/\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/

# 郵便番号（ハイフンあり5桁）
/\A\d{3}[-]\d{2}\z/

# 郵便番号（ハイフンあり7桁）
/\A\d{3}[-]\d{4}\z/

# 郵便番号（ハイフンなし3桁）
/\A\d{3}\z/

# 郵便番号（ハイフンなし5桁）
/\A\d{5}\z/

# 郵便番号（ハイフンなし7桁）
/\A\d{7}\z/

# 郵便番号（ハイフンあり・なし両方）
/\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}$|^\d{5}$|^\d{7}\z/

#
# 電話番号
#

# 電話番号(ハイフンなし10桁)
/\A\d{10}\z/

# 携帯番号(ハイフンなし11桁)
/\A\d{11}\z/

# 携帯番号(ハイフンなし10桁or11桁)
/\A\d{10,11}\z/

#
# その他
#

# e-mail
 /\A\S+@\S+\.\S+\z/

# 日付 YYYY-MM-DD
/\A\d{4}-\d{2}-\d{2}\z/

# 時刻 24h
/\A([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]\z/

# 時刻 12h
/\A(0[0-9]|10|11):[0-5][0-9]:[0-5][0-9]\z/

# URL
/\Ahttp(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w-.\/?%&=]*)?/

# クレジットカード(VISA,Master,Diners,Discover,Amex対応)
/\A(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6011[0-9]{12}|3(?:0[0-5]|[68][0-9])[0-9]{11}|3[47][0-9]{13})\z/