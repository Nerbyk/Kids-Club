class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create 
    @request = Request.new(request_params)
    
    if @request.save 
      @id = Request.last.id.to_s
      flash[:info] = "Заявка была отправлена"
      send_to_telegram
      redirect_to root_path
    else  
      render 'new'
    end
  end

  private 

  def request_params 
    params.require(:request).permit(:name, :phone, :email, :text)
  end

  def send_to_telegram
    message = generate_message(request_params, @id)
    Telegram.bot.send_message(chat_id: ENV['TELEGRAM_RECEIVER_ID'], text: message)
  end
end
