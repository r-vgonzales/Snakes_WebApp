class HomeController < ApplicationController
  def home
  end

  def petform
    @snake = Snake.new
  end

  def snktable
    @snakes = Snake.all
  end

  def facts
  end
end
