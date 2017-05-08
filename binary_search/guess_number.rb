class GuessNumber
  def initialize(number, max = 100)
    @number = number
    @min = 1
    @max = max
    @all_guesses = []
  end

  attr_reader :all_guesses

  def search
    return @min if @number == @min
    return @max if @number == @max  
    incorrect_guess = true
    while(incorrect_guess)
      guess = ((@max + @min) / 2)
      @all_guesses.push(guess)
      case guess
      when ->(n) { n == @number }    
        incorrect_guess = false
      when ->(n) { n < @number }
        @min = guess
      when ->(n) { n > @number }
        @max = guess
      end
    end
    @all_guesses.last
  end
end