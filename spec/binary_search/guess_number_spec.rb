RSpec.describe GuessNumber do
  describe "#search" do
    it "finds the number" do
      expect(GuessNumber.new(1).search).to eq(1)
      expect(GuessNumber.new(100).search).to eq(100)
      expect(GuessNumber.new(5).search).to eq(5)
      expect(GuessNumber.new(50).search).to eq(50)
      expect(GuessNumber.new(75).search).to eq(75)
      expect(GuessNumber.new(99).search).to eq(99)
      expect(GuessNumber.new(3).search).to eq(3)
      expect(GuessNumber.new(2).search).to eq(2)  
    end

    it "return array of all guesses" do
      object = GuessNumber.new(10)
      object.search
      expect(object.all_guesses).to eq(
        [50, 25, 13, 7, 10]
      )
    end
  end
end