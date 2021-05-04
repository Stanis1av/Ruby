require_relative '../8.5'

RSpec.describe Posneg do
  describe '.posneg' do
    it 'when positive' do
      [12, 1, 97, 4073, 507].each do |i|
        example = Posneg.new(i)
        expect(example.posneg).to eq 'Число положительное'
      end
    end

    it 'when negative' do
      [-1, -44, -782, -20974].each do |i|
        example = Posneg.new(i)
        expect(example.posneg).to eq 'Число отрицательное'
      end
    end

    it 'when not integers' do
      ['a', 'loren', 'seven', 'qwerty'].each do |i|
        example = Posneg.new(i)
        expect(example.posneg).to eq 'Это не число'
      end
    end
  end
end
