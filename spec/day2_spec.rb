require 'day2'

describe DayTwo do
  present = Present.new

  it 'works out the wrapping paper needed for a present' do
    present.shape('2x3x4')
    expect(present.paper).to eq 58
  end
  
  it 'works out the wrapping paper needed for a present' do
    present.shape('1x1x10')
    expect(present.paper).to eq 43
  end

  it 'works out how much paper in total' do
    worker = DayTwo.new
    worker.import('presents.txt')
    expect(worker.total).to eq 1598415
  end

end
