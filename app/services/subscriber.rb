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
    
    def self.find(id)
      response = Request.get("subscribers/#{id}/information")
      Subscriber.new(response)
    end
  end
end