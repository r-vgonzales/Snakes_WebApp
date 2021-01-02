class HomeController < ApplicationController
  def home
  end

  def petform
    @snake = Snake.new
  end

  def snktable
  end

  def facts
  end
end
