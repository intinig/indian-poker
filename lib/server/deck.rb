module Server
  class Deck
    attr_reader :cards

    def initialize
      @cards = []
      %w(h s d c).each do |suit|
        ((1..10).to_a + %w(J Q K)).each do |val|
          @cards << val.to_s + suit
        end
      end
      @cards.shuffle!
    end

    def shuffle
      @cards.shuffle
    end

    def deal
      @cards.shift
    end
  end
end
