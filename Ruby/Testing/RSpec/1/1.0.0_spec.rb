require_relative '1.0.0'
RSpec.describe Sum_int do
  describe 'sum integer' do
    it 'returns the sum of numbers if the program work correctly' do
      ex1 = Sum_int.new(3, 2)
      expect(ex1.result).to eq 5
    end
  end
end
