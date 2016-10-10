# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    render 'hello/world'
  end

  def about
    render 'pages/about'
  end
end
