class SubscribersController < ApplicationController
  def index
    @subscribers, @errors = Transexp::Subscriber.random(query)
  end

  def show
    @subscriber = Transexp::Subscriber.find(params[:id])
  end
  
  private
  
  def query
    params.fetch(:query, {})
  end
end
