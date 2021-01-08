class Tone
  attr_reader :tones
  def initialize(data)
    @tones = compile_tones(data)
  end

  private

  def compile_tones(data)
    data[:document_tone][:tones].map do |tone|
      tone[:tone_name]
    end
  end
end