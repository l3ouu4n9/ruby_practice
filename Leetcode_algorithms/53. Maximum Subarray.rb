# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_now = nums[0]
    max_final = nums[0]
    (1..nums.size-1).each {|i|
        max_now = [max_now + nums[i], nums[i]].max
        max_final = [max_final, max_now].max
    }
    return max_final
end
