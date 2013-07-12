class Rover
  attr_accessor :direction, :position
  attr_writer   :direction, :position

  def initialize(options = {})
    @direction = options[:direction]
    @position  = options[:position]
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

  private

  def position_update axis, value
    @position[axis] += value
  end
end
