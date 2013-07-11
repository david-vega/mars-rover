class Rover
  attr_accessor :direction
  attr_writer   :position

  def initialize(options = {})
    @direction = options[:direction]
    @position  = options[:position]
  end

  def move_forward
  end

  def move_backward
  end

  def turn_left
  end

  def turn_right
  end

  def move command
    command.chars.each do |instruction|
      parse instruction
    end
  end

  private

  def parse instruction
    case instruction
      when 'f' then move_forward
      when 'b' then move_backward
      when 'l' then turn_left
      when 'r' then turn_right
      else nil
    end
  end

  def update_position axis, value
    new_position = @position.dup
    new_position[axis] += value
    @position = handle_obstacle new_position
  end

end
