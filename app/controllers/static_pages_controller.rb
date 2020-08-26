class StaticPagesController < ApplicationController
  def home
    
  end

  def contacts
    @request = Request.new
  end
end
