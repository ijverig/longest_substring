class String
    # Returns largest sum subarray and its initial and final positions
    def longest_substring
        return nil if empty?

        # generates all substrings with its positions = [substring, initial position, end position]
        substrs = []
        (1..length).each do |size|
            chars.each_cons(size).with_index do |substr, i|
                substrs << [substr.join, i, i+size] if substr.uniq.length == 1
            end
        end
        # returns longest substring and its initial and final positions
        max_substr, *positions = substrs.max_by {|substr, _, _| substr.length}
        [max_substr, *positions]
    end

    def max_substring
        substr, *_ = longest_substring
        substr
    end
end
