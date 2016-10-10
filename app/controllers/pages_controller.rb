class PagesController < ApplicationController
  def home
  end

  def about
    # two way to get name variables
    @name = "#{params[:first_name]} #{params['last_name']}"
  end
  # when Get /math run
  def math
    @numbers = (1..46).to_a.sample(6)
  end
end
