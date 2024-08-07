# frozen_string_literal: true

require_relative '../lib/sorting'

RSpec.describe Sorting, '#insertion_sort' do
  context 'when given a simply array' do
    it 'returns it sorted' do
      expect(Sorting.insertion_sort([3, 2, 1, 4])).to eq [1, 2, 3, 4]
    end
  end
end

RSpec.describe Sorting, '#merge_sort' do
  context "when given an array that's not sorted" do
    it 'returns it sorted' do
      expect(Sorting.merge_sort([3, 2, 1, 4])).to eq([1, 2, 3, 4])
    end
  end
end

RSpec.describe Sorting, '#bubble_sort' do
  context "when given an array that's not sorted" do
    it 'returns it sorted' do
      expect(Sorting.bubble_sort([3, 2, 1, 4])).to eq([1, 2, 3, 4])
    end
  end
end
