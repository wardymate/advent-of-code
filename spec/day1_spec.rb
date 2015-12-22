require 'day1'

describe DayOne do
  santa = DayOne.new

  it 'works out the floor' do
    expect(santa.moves('(')).to eq(1)
    expect(santa.moves(')')).to eq(-1)
    expect(santa.moves('))(((((')).to eq(3)
  end

end
