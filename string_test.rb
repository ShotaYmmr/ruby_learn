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

