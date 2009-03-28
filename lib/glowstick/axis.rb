class Glowstick

  class Axis
    attr_accessor :color,
      :in_ticks, :out_ticks
    
    def initialize
      @color = [0.5, 0.5, 0.0]
      @in_ticks = 0.25
      @out_ticks = 0.5
    end
  end # Axis

end # Glowstick