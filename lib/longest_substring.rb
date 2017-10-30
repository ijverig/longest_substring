class String
    # Returns longest substring or nil if string is empty
    def longest_substring
        # generates all substrings
        substrs = []
        (1..length).each {|size| chars.each_cons(size).each {|substr| substrs << substr}}

        # returns longest substring
        substrs.select {|substr| substr.uniq.length == 1}.max_by(&:length)&.join
    end

    # Returns longest substring positions or [nil,nil] if string is empty
    def longest_substring_positions
        return [nil,nil] if empty?

        s = longest_substring
        initial = self.index(s)
        [initial, initial+s.length]
    end
end
