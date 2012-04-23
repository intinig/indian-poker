module Server
  class Player
    attr_accessor :name, :chips, :card, :button

    def initialize(name)
      @name = name
      @chips = 1000
      @card = nil
      @button = false
    end

    def get_chips(amount)
      if chips > amount
        transfer = @chips
        @chips -= @chips
        transfer
      else
        chips -= amount
        amount
      end
    end

    def toggle_button
      @button = !@button
    end

    def reset
      @card = nil
    end

    def deal(card)
      @card = card
    end
  end

end
