require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    # display a random grid and a form and post the form to the score.
    @letters = []
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    dictionnary = URI.open(url).read
    data = JSON.parse(dictionnary)
    @english = data['found']
  end
end
