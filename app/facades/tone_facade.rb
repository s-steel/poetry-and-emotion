class ToneFacade
  def self.analyze_tone(words_to_analyze)
    tones = IbmService.tone(words_to_analyze)
    Tone.new(tones)
  end
end
