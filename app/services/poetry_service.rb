class PoetryService

  def self.search_poems(keyword, limit = 100)
    response = conn.get("author/#{keyword}")

    parse_it(response).take(limit)
  end

  private

  def self.conn
    Faraday.new('https://poetrydb.org')
  end

  def self.parse_it(data)
    JSON.parse(data.body, symbolize_names: true)
  end
end
