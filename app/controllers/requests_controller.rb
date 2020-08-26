class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create 
    @request = Request.new(request_params)
    if @request.save 
      flash[:info] = "Заявка была отправлена"
    else  
      render 'new'
    end
  end

  private 

  def request_params 
    params.require(:request).permit(:name, :phone, :email, :text)
  end
end
