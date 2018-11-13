class GamesController < ApplicationController
  def new
    @letters = []
    @alphabet = ("A"..."Z").to_a
    10.times do (@letters << @alphabet.sample)
    end
  end

  def score
    @letters = params[:letters]
    @word = params[:word].upcase.split("")
  end
end
