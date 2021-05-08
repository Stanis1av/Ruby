require_relative '../8.6'

RSpec.describe 'Value even or odd?' do

  it 'when even' do
    expect(evenodd(10)).to eq "Число чётное"
  end

  it 'when odd' do
    expect(evenodd(3)).to eq "Число НЕ чётное"
  end
end
