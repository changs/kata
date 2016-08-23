require 'minitest/autorun'
require './pagination_helper'

describe PaginationHelper do
  describe '#item_count' do
    it 'returns how many items are in the collection' do
      helper = PaginationHelper.new(%w(a b c d e f), 4)
      helper.item_count.must_equal 6
    end
  end

  describe '#page_count' do
    it 'returns how many pages are in the collection' do
      helper = PaginationHelper.new(%w(a b c d e f), 4)
      helper.page_count.must_equal 2
    end
  end

  describe '#page_item_count' do
    it 'returns how many items are on the page' do
      helper = PaginationHelper.new(%w(a b c d e f), 4)
      helper.page_item_count(0).must_equal 4
      helper.page_item_count(1).must_equal 2
      helper.page_item_count(2).must_equal -1
    end
  end

  describe '#page' do
    it 'returns an array of objects from page' do
      helper = PaginationHelper.new(%w(a b c d e f), 4)
      helper.page(0).must_equal %w(a b c d)
      helper.page(1).must_equal %w(e f)
    end
  end

  describe '#page_index' do
    it 'returns a page that the index belongs to' do
      helper = PaginationHelper.new(%w(a b c d e f), 4)
      helper.page_index(5).must_equal 1
      helper.page_index(2).must_equal 0
      helper.page_index(20).must_equal(-1)
      helper.page_index(-10).must_equal(-1)
    end
  end
end
