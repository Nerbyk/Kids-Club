class CoursesController < ApplicationController
  before_action :set_request 
  layout "article_general"
  def course1
  end

  def course2
  end

  def course3
  end

  def course4
  end

  def course5
  end

  def course6
  end

  def course7
  end

  def course8
  end

  def course9
  end

  private 

  def set_request 
    @request = Request.new
  end
end
