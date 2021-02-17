# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    i = 0
    (1..nums.size-1).each do |idx|
        if nums[idx] != nums[i]
            i += 1
            nums[i] = nums[idx]
        end
    end
    return i if nums.empty?
    return i + 1
end
