# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    i = 0
    (i..nums.size-1).each do |j|
        if nums[j] != val
            nums[i] = nums[j]
            i += 1
        end
    end
    return i
end
