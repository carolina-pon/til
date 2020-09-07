# 2.7~2.9までのcode memo

puts "abc".class

puts %q!He said,"Don't speak."!
# %q! !で囲う　= シングルクォートで囲うのと同じ

something = "hello"
puts %Q!#{something}!
# %Q! ! or %! ! で囲う = ダブルクォートで囲うのと同じ

puts "Line 1,
Line 2"
# 改行できる

a = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列作成に便利です。
TEXT
puts a
# 識別子は野路列に使用されているもの以外なら自由に付けられる
# ヒアドキュメントのなかでは式展開も可能

puts sprintf("%0.3f",1.2)
# sprintfメソッド　指定されたフォーマットの文字列を作成することができる
puts "%0.3f" % 1.2
# ちょっと変わってるけど "フォーマット文字列" % "表示したいオブジェクト"の形式でかいても同じ

# 文字列作成いろいろ
# 数値から文字列
puts 123.to_s
# 配列を連結して１つの文字列にする
puts [10,20,30].join
# 演算子を使って文字列を繰り返す
puts "Hi!" * 10
# String.newを使って新しい文字列を作る
puts String.new("hello")