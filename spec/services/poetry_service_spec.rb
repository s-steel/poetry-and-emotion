require 'rails_helper'

describe 'PoetryDB service' do 
  it 'search will return poems' do 
    response = PoetryService.search_poems('Emily', 5)
  
    expect(response.length).to eq(5)
    expect(response).to be_an(Array)
    expect(response[0]).to be_a(Hash)

    expect(response[0]).to have_key(:title)
    expect(response[0]).to have_key(:author)
    expect(response[0]).to have_key(:lines)

    expect(response[0][:title]).to be_a(String)
    expect(response[0][:author]).to be_a(String)
    expect(response[0][:lines]).to be_a(Array)
    expect(response[0][:lines][0]).to be_a(String)
  end
end