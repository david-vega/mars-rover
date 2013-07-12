class Rover
  attr_accessor :direction, :position
  attr_writer   :direction, :position

  def initialize(options = {})
    @direction = options[:direction]
    @position  = options[:position]
  end

  def move command
    command.chars.each do |request|
      parse request
    end
  end

  def forward
    case direction
      when 'n' then position_update :y, 1
      when 's' then position_update :y, -1
      when 'e' then position_update :x, 1
      when 'w' then position_update :x, -1
      else nil
    end
  end

  def left
    case direction
      when 'n' then @direction = 'w'
      when 's' then @direction = 'e'
      when 'e' then @direction = 'n'
      when 'w' then @direction = 's'
      else nil
    end
  end

  def right
    case direction
      when 'n' then @direction = 'e'
      when 's' then @direction = 'w'
      when 'e' then @direction = 's'
      when 'w' then @direction = 'n'
      else nil
    end
  end

  private

  def parse instruction
    case instruction
      when 'M' then forward
      when 'L' then left
      when 'R' then right
      else nil
    end
  end

  def position_update axis, value
    @position[axis] += value
  end
end
