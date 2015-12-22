class DayTwo
  
  def initialize
    @box_areas = []
  end


  def import(upload_file)
    File.open(upload_file, 'r').each_line do |line|
      present = Present.new
      present.shape(line)
      @box_areas << present.paper
    end
  end

  def total
    @box_areas.inject(:+)
  end


end


class Present

  def shape(input)
    @sides = input.split('x').map{|s|s.to_i}.sort
  end

  def paper
    area = 2*((@sides[0]*@sides[1]) + (@sides[1]*@sides[2]) + (@sides[0]*@sides[2]))
    area + (@sides[0]*@sides[1])
  end
end
