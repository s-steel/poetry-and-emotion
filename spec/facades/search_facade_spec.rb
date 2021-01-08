require 'rails_helper'

describe 'Search Facade' do
  it 'returns poetry objects' do
    poetry = SearchFacade.search_poetry('Emily', 5)

    expect(poetry).to be_an(Array)
    expect(poetry.size).to eq(5)
    expect(poetry.first).to be_an_instance_of(Poetry)
  end
end