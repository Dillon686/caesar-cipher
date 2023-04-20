def caesar_cipher(string, shift_factor)
    alphabetUpper = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    alphabetLower = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    initialArray = makeArrayFromString(string)
    newArray = []

    initialArray.each do |letter|
        if letter == " "
            newArray.push(" ")
        elsif letter == letter.upcase
            index = alphabetUpper.find_index(letter)
            newIndex = index + shift_factor
            if newIndex > ((alphabetUpper.length)-1) 
                newIndex = shift_factor - (alphabetUpper.length - index)
            end
            newArray.push(alphabetUpper[newIndex])
        elsif letter == letter.downcase
            index = alphabetLower.find_index(letter)
            newIndex = index + shift_factor
            if newIndex > ((alphabetLower.length)-1) 
                newIndex = shift_factor - (alphabetLower.length - index)
            end
            newArray.push(alphabetLower[newIndex])
        end
    end
    createStringFromArray(newArray)
end

def makeArrayFromString(string)
    stringArray = []
    for i in 0...string.length
        stringArray.push(string[i])
    end

    return stringArray
end

def createStringFromArray(array)
    array.join("")
end

newArray = makeArrayFromString("Dillon Richardson")
puts caesar_cipher("Dillon Richardson", -2)