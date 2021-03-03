# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits[-1] += 1
    (0..digits.size-1).reverse_each { |i|
        if digits[i] == 10
            if i == 0
                digits[i] = 0
                digits.insert(0, 1)
            else
                digits[i] = 0
                digits[i - 1] += 1
            end
        else
            break
        end
    }
    return digits
end
