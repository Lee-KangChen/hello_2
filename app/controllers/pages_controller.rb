class PagesController < ApplicationController
  def home
  end

  def about
    # two way to get name variables
    params[:name]   # => bigman
    params['name']  # => bigman
  end
  # when Get /math run
  def math
    @numbers = (1..46).to_a.sample(6)
  end
end
