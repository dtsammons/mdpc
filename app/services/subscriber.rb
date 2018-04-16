module Transexp
  class Subscriber < Base
    attr_accessor :firstName,
                  :lastName,
                  :fullName,
                  :coName,
                  :phone_type,
                  :phone_nr,
                  :addrLn1,
                  :addrLn2,
                  :city,
                  :state,
                  :zipCode,
                  :ctry,
                  :email,
                  :type,
                  :stat,
                  :note
    
    MAX_LIMIT = 25
    
    def self.find(id)
      response = Request.get("subscribers/#{id}/information")
      Subscriber.new(response)
    end
    
    def self.random(query = {})
      response = Request.where('subscribers/random', query.merge({ number: MAX_LIMIT }))
      subscribers = response.fetch('subscribers', []).map { |subscriber| Subscriber.new(subscriber) }
      [ subscribres, response[:errors] ]
    end
    
    def initialize(args = {})
      super(args)
    end
  end
end