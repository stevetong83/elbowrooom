class MessageController < ApplicationController

  def create
    @message = Message.create params[:message]
    if @message.save
      redirect_to root_path, notice: "Message Sent! We will be in contact shortly. Thank you!"
    else
      redirect_to root_path, notice: "Unable to send message"
    end
  end
end
