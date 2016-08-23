class PaginationHelper
  def initialize(items, page_size)
    @items = items
    @page_size = page_size
  end

  def item_count
    @items.size
  end

  def page_count
    @page_count ||= (item_count.to_f / @page_size).ceil
  end

  def page_item_count(i)
    return -1 if page(i).nil?
    page(i).size
  end

  def page(i)
    @items[offset(i)...(offset(i) + @page_size)]
  end

  def page_index(i)
    return -1 if i > item_count || i < 0
    (i / @page_size.to_f).floor
  end

  private

  def offset(i)
    offset = (i * @page_size)
    offset == -1 ? 0 : offset
  end
end
