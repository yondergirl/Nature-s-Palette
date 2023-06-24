# Create a nature-inspired color palette

# Create a class for each color

class Red

  def initialize 
    @red_hue = "#FF0000"  
  end  
  
  def to_s
    "Red: #{@red_hue}"
  end

end

class Orange
  
  def initialize 
    @orange_hue = "#FF7F00"  
  end  
  
  def to_s
    "Orange: #{@orange_hue}"
  end

end

class Yellow
 
  def initialize 
    @yellow_hue = "#FFFF00"  
  end  
  
  def to_s
    "Yellow: #{@yellow_hue}"
  end

end

class Green
  
  def initialize 
    @green_hue = "#00FF00"  
  end  
  
  def to_s
    "Green: #{@green_hue}"
  end

end

class Blue
 
  def initialize 
    @blue_hue = "#0000FF" 
  end  
  
  def to_s
    "Blue: #{@blue_hue}"
  end

end

class Purple
  
  def initialize 
    @purple_hue = "#7F00FF"  
  end  
  
  def to_s
    "Purple: #{@purple_hue}"
  end

end

# Create a 'Nature's Palette' class

class NaturesPalette  

  def initialize
    @colors = [Red.new,Orange.new,Yellow.new,Green.new,Blue.new,Purple.new]  
  end

  def list_colors 
    puts "Here is Nature's Palette:" 
    @colors.each { |c| puts c }
  end

end

# Create an instance of the Nature's Palette class

natures_palette = NaturesPalette.new
natures_palette.list_colors