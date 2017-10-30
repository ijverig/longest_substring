class String
    # Returns longest substring or nil if string is empty
    def longest_substring
        # 1. chunks the string into substrings of same char
        # 2. selects the largest one
        # 3. returns it
        chars.chunk(&:itself).map(&:last).max_by(&:length)&.join
    end

    # Returns longest substring positions or [nil,nil] if string is empty
    def longest_substring_positions
        return [nil,nil] if empty?

        s = longest_substring
        initial = self.index(s)
        [initial, initial+s.length]
    end
end
