class ChatController < ApplicationController
    # before_filter :authenticate_user!
  def index
  	    @messages = Message.all
  end

  def create
  	 @message = Message.create!(params[:message])

  	 respond_to do |format|
       format.js
       foramt.html
  	 end	
  end
end
