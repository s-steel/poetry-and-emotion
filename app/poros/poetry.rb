class Poetry
  attr_reader :title,
              :author,
              :poem

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @poem = data[:lines].join(' ')
  end
end