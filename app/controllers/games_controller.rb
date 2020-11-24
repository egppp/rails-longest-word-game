require "open-uri"


class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/:word"
    @dict = JSON.parse(open(url).read)
    # @word = param[:word]
  end
end
