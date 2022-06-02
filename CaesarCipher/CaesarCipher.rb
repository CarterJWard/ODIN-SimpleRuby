def caesar_cipher(string, num)
    string = string.split("")
    newStr = ""
    string.each {
        |item|
        case item.ord
        when 65..90
            newStr << ((((item.ord - 65 ) + num ) % 26) + 65).chr
        when 97..122 
            newStr << ((((item.ord - 97 ) + num ) % 26) + 97).chr
        else
            newStr << item
        end
    }
    newStr
end

puts caesar_cipher("What a string!", 5)