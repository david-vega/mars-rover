class World
  attr_reader :width, :height

  def initialize options = {}
    @width     = options[:width]
    @height    = options[:height]
  end
end
