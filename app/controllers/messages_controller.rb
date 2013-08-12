class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create params[:message]
    if @message.save
      redirect_to root_path, notice: "Message Sent! We will be in contact shortly. Thank you!"
    else
      render :new
    end
  end
end
