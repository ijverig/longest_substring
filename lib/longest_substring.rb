class String
    # Returns longest substring and its initial and final positions
    def longest_substring
        return nil if empty?

        # generates all substrings with its positions = [substring, initial position, end position]
        substrs = []
        (1..length).each do |size|
            chars.each_cons(size).with_index do |substr, i|
                substrs << [substr.join, i, i+size] if substr.uniq.length == 1
            end
        end

        # selects longest substring and its initial and final positions
        max_substr, *positions = substrs.max_by {|substr, _, _| substr.length}
        [max_substr, *positions]
    end

    # Returns longest substring or nil if String is empty
    def max_substring
        substr, *_ = longest_substring
        substr
    end

    # Returns longest substring positions or [nil,nil] if String is empty
    def max_substring_positions
        _, initial, final = longest_substring
        [initial, final]
    end
end
