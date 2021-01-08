class IbmService
  def self.tone(words_to_analyze)
    response = conn.post('/v3/tone?version=2017-09-21') do |req|
      req.headers['Content-Type'] = 'text/plain'
      req.body = words_to_analyze
    end

    parse_it(response)
  end

  private

  def self.conn
    Faraday.new('https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/e43293fc-edcd-470e-837a-d3ceeed6e416') do |connection|
      connection.basic_auth('apikey', ENV['IBM_APIKEY'] )
    end 
  end

  def self.parse_it(data)
    JSON.parse(data.body, symbolize_names: true)
  end
end
