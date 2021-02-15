=begin

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

Example 1:

Input: x = 123
Output: 321

Example 2:

Input: x = -123
Output: -321

Example 3:

Input: x = 120
Output: 21

Example 4:

Input: x = 0
Output: 0

=end

# @param {Integer} x
# @return {Integer}
def reverse(x)
    num = x.to_s.reverse.to_i
    if x > 0
        if num <= 2 ** 31 - 1
            return num
        end
    else
        if num <= 2 ** 31
            return num * -1
        end
    end
    return 0
end
