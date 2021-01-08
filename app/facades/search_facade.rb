class SearchFacade
  def self.search_poetry(keyword, limit)
    poetry = PoetryService.search_poems(keyword, limit)
    poetry.map do |p|
      Poetry.new(p)
    end
  end
end
