def greeting(country)
    return '値を入れてください' if country.nil?

    if country == 'japan'
        'こんにちわ'
    else
        'hello'
    end
end

puts greeting('japan')
puts greeting('us')
puts greeting(nil)
