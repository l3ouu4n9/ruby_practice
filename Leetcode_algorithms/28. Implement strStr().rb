# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty?
    idx = haystack.index(needle)
    return -1 if idx.nil?
    return idx
end
