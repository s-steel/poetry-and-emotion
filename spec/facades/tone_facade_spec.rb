require 'rails_helper'

describe 'Ibm Facade' do
  it 'returns tone objects' do
    tones = ToneFacade.analyze_tone('Team, I know that times are tough! Product sales have been disappointing for the past three quarters. We have a competitive product, but we need to do a better job of selling it!')

    expect(tones.tones.size).to eq(2)
    expect(tones).to be_an_instance_of(Tone)
    expect(tones.tones).to be_an_instance_of(Array)
  end
end
