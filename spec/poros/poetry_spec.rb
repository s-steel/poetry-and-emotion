require 'rails_helper'

describe 'Poetry PORO' do
  it 'creates attributes' do
    poetry_data = {:title=>"Not at Home to Callers",
      :author=>"Emily Dickinson",
      :lines=>["Not at Home to Callers", "Says the Naked Tree --", "Bonnet due in April --", "Wishing you Good Day --"],
      :linecount=>"4"}

    poetry = Poetry.new(poetry_data)
    expect(poetry.title).to eq(poetry_data[:title])
    expect(poetry.author).to eq(poetry_data[:author])
    expect(poetry.poem).to eq(poetry_data[:lines].join(' '))
  end
end