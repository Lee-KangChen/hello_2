class PagesController < ApplicationController
  def home
  end

  def about
  end
  # when Get /math run
  def math
    @numbers = (1..46).to_a.sample(6)
  end
end
