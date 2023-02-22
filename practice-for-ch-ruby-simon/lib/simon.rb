class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    (0...sequence_length).each do |idx|
      puts "input your #{idx+1} guess"
      user_input = gets.chomp
      if user_input.downcase == seq[idx].downcase
        puts "Correct!"
      else
         puts "Incorrect!"
         @game_over = true
      end
    end

  end

  def add_random_color
    self.seq << COLORS[rand(COLORS.length)]
    sequence_length = seq.length
  end

  def round_success_message
    puts "round #{sequence_length} win!"
  end

  def game_over_message
    p "Game Over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end