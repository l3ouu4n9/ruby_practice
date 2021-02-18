# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.each_with_index { |val,idx|
        return idx if val >= target
    }
    return nums.size
end
