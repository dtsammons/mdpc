require 'faraday'
require 'json'

class Connection
  BASE = 'https://vt.cert.transactionexpress.com'
  
  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['Gateway_ID'] = ENV['TE_GATEWAY_ID']
      faraday.headers['HostedKey'] = ENV['TE_HOSTED_KEY']
      faraday.headers['RURL'] = 'https://hidden-tor-85153.herokuapp.com/'
      faraday.headers['CURL'] = 'https://hidden-tor-85153.herokuapp.com/'
      
    end
  end
end
