# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    render 'pages/home'
  end

  def about
    render 'pages/about'
  end
end
