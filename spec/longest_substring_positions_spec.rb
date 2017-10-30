describe String do
    describe "#longest_substring_positions" do
        it 'is a method of String' do
            expect(String.new.respond_to?(:longest_substring_positions)).to be true
        end

        context "given an empty string" do
            string = ""
            it "returns [nil,nil]" do
                expect(string.longest_substring_positions).to eql [nil,nil]
            end
        end

        context "given a string of 1 char" do
            string = "X"
            it "returns [0,1]" do
                expect(string.longest_substring_positions).to eql [0,1]
            end
        end

        context "given a string with no unique longest substring" do
            string = "bagage"
            it "returns the positions [0,1] of the first char of this string" do
                expect(string.longest_substring_positions).to eql [0,1]
            end
        end

        context "given a string with a longest unique substring" do
            string = "Ahhhhh!!!"
            it "returns the positions of this substring" do
                expect(string.longest_substring_positions).to eql [1,6]
            end
        end

        context "given a string with several longest substrings" do
            string = "AeeeIoooU"
            it "returns the positions of the first longest substring" do
                expect(string.longest_substring_positions).to eql [1,4]
            end
        end
    end
end
