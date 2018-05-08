require 'faraday'
require 'json'

module Transexp
  class Connection
    BASE = 'https://cert.web.reportingsys.transactionexpress.com/TransFirst.ReportingSys.Web/api'
    
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
end
