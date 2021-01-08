require 'rails_helper'

describe 'IBM service' do 
  it 'Return tone analysis' do 
    response = IbmService.tone('Team, I know that times are tough! Product sales have been disappointing for the past three quarters. We have a competitive product, but we need to do a better job of selling it!')

    expect(response).to be_an(Hash)
    expect(response).to have_key(:document_tone)
    expect(response).to have_key(:sentences_tone)
    expect(response[:document_tone]).to have_key(:tones)
    expect(response[:document_tone][:tones]).to be_an(Array)
    expect(response[:document_tone][:tones][0]).to be_a(Hash)
    expect(response[:document_tone][:tones][0]).to have_key(:score)
    expect(response[:document_tone][:tones][0]).to have_key(:tone_id)
    expect(response[:document_tone][:tones][0]).to have_key(:tone_name)
  end
end
