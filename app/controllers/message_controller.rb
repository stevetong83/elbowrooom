class MessageController < ApplicationController

  def create
    @message = Message.create params[:message]
    if @message.save

    else

    end
  end
end
