require './deck'
require './player'

module Server
  class Base
    def initialize
      @players = []
      8.times {|i| @players << Player.new("Bot #{i}")}
      @button = rand(@players.size)
      @players[@button].toggle_button
      @pot = 0
    end

    def loop
      declare_winner if @players.size == 1
      shuffle
      move_button
      raise_blinds
      get_blinds
      deal
      play
    end

    def declare_winner
      puts "Winner is #{@players.first.name}"
    end

    def shuffle
      @deck = Deck.new
      @players.each {|player| player.reset}
    end

    def deal
      @players.each {|player| player.deal(@deck.deal)}
    end

    def move_button
      @players[@button].toggle_button
      @button += 1
      @players[@button].toggle_button
    end

    def get_blinds
      @pot += small_blind.get_chips(small_blind_amount)
      @pot += big_blind.get_chips(big_blind_amount)
    end

    def small_blind_amount
      # placeholder
      25
    end

    def big_blind_amount
      # placeholder
      50
    end

    def small_blind
      @players[(@button + 1) % @players.size]
    end

    def big_blind
      @players[(@button + 2) % @players.size]
    end

    def play

    end

    def raise_blinds
      # todo
    end
  end
end
