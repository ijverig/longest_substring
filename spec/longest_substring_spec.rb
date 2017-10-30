describe String do
    describe "#longest_substring" do
        it 'is a method of String' do
            expect(String.new.respond_to?(:longest_substring)).to be true
        end

        context "given an empty string" do
            string = ""
            it "returns nil" do
                expect(string.longest_substring).to be_nil
            end
        end

        context "given a string of 1 char" do
            string = "X"
            it "returns this string" do
                expect(string.longest_substring).to eql string
            end
        end

        context "given a string with no unique longest substring" do
            string = "bagage"
            it "returns the first char of this string" do
                expect(string.longest_substring).to eql "b"
            end
        end

        context "given a string with a longest unique substring" do
            string = "Ahhhhh!!!"
            it "returns this substring" do
                expect(string.longest_substring).to eql "hhhhh"
            end
        end

        context "given a string with several longest substrings" do
            string = "AeeeIoooU"
            it "returns the first longest substring" do
                expect(string.longest_substring).to eql "eee"
            end
        end
    end
end
