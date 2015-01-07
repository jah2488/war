class War
	def initialize
    @player_one = Player.new
    @player_two = Player.new
  end

  def play
    while @player_one.cards.count > 0 do
      card_one = @player_one.cards.draw
      card_two = @player_two.cards.draw
      puts "Player 💩 [#{card_one}] vs Player 🐦 [#{card_two}]"
      if card_one == card_two
        puts "Tie! - no one wins"
      elsif card_one > card_two
        @player_one.score += 1
        puts "player one scored this hand"
      else
        @player_two.score += 1
        puts "player two scored this hand"
      end
    end
    puts "Final Score Is"
    puts "--------------"
    puts "Player One #{@player_one.score}"
    puts "Player Two #{@player_two.score}"
    if @player_one.score > @player_two.score
      `say 'Player one is the winner'`
    else
      `say 'Player two is the winner'`
    end
  end
end
