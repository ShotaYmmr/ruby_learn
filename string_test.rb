# .classをつけると値のクラス名が出力される
puts 'abc'.class

# %記法
## %q! mojiretu ! は '' と同じ
puts %q!He said, "Don't speak."!

## %Q! mojiretu ! は "" と同じ
something = "Hello"
puts %Q!He said, "#{something}"!

## %! mojiretu ! も "" と同じ
something = "Bye"
puts %Q!He said, "#{something}"!

## ?を区切り文字として使う
puts %q?He said, "Don't speak."?

## {} を区切り文字として使う
puts %q{He said, "Don't speak."}

# ヒアドキュメントの使い方
puts "line1,
line2"

a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列に使用すると便利らしい。
TEXT

puts a

b = <<HTML
<div>
    <img src="sample.jpg">
</div>
HTML

puts b

def some_method
    <<-TEXT
これはヒアドキュメントです。
<<-を使うと最後の識別子をインデントさせることができます。
    TEXT
end

puts some_method

def some_method2
    <<~TEXT
        これはヒアドキュメントです。
        <<~を使うと内部文字列のインデント部分が無視されます。
    TEXT
end

puts some_method2

name = 'Alice'

a = <<TEXT
ようこそ #{name}さん
以下のメッセージを御覧ください。
※ヒアドキュメント内で式展開が可能。
TEXT
puts a

b = <<'TEXT'
ようこそ #{name}さん
以下のメッセージを御覧ください。
※シングルクォートをつけるとヒアドキュメント内での式展開が無効化。
TEXT
puts b

c = <<"TEXT"
ようこそ #{name}さん
以下のメッセージを御覧ください。
※ダブルクォートをつけるとヒアドキュメント内での式展開が有効化。
TEXT
puts c

# ヒアドキュメントを直接引数として渡す
# (prependは渡された文字列の末尾に追加するメソッド)
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT

puts a

# ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す
# (upcaseは文字列をすべて大文字にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

puts sprintf('%0.3f',1.2)
puts sprintf('%0.3f + %0.3f',1.2 , 0.48)

# 数値を文字列に
123.to_s

# 配列を連結する
[10,20,300].join

# 演算子を使って繰り返し
'Hi!' * 10

# String.newを使って新しい文字列を作成する（めったに使わないらしい）
String.new('Hello world')