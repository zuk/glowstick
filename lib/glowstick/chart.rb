require 'lib/glowstick/axis'

class Glowstick
  
  class Chart < Graph
    attr_accessor :x_axis, :y_axis
    
    def initialize
      super
      @x_axis = Axis.new
      @y_axis = Axis.new
    end
    
    def draw
      draw_axes
      glColor3f(*@color)
      draw_data
    end
    
    protected
    
    def draw_axes
      if x_axis
        glColor3f(*x_axis.color)
        line(0, 0, data.size, 0)
        (0..data.size).each do |x| 
          draw_string(x.to_s, x-(width_of_string(x.to_s)/2.0), -0.5 - x_axis.out_ticks)
          line(x,0,x,x_axis.in_ticks) if x_axis.in_ticks
          line(x,0,x,-x_axis.out_ticks) if x_axis.out_ticks
        end
      end
      
      if y_axis
        glColor3f(*y_axis.color)
        line(0, 0, 0, data.max) if y_axis
        (0..data.max).each do |y| 
          draw_string(y.to_s, -0.2 - (y_axis.out_ticks*0.25), y - (height_of_string(y.to_s)/2.0))
          line(0,y,y_axis.in_ticks*0.25,y) if y_axis.in_ticks
          line(0,y,-y_axis.out_ticks*0.25,y) if y_axis.out_ticks
        end
      end
    end
    
  end # Chart
  
end # Glowstick