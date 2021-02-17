# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.each_char do |ch|
        case ch
        when '(','{','['
            stack.push(ch)
        when ')'
            return false if stack.pop() != '('
        when '}'
            return false if stack.pop() != '{'
        when ']'
            return false if stack.pop() != '['
        else
            return false
        end
    end
    return stack.empty?
end
