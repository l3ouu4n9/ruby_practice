# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    return 0 if s.split[-1].nil?
    return s.split[-1].size
end
