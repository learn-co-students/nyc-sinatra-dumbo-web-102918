class FiguresController < ApplicationController
  # add controller methods
  get '/' do
    erb :"application/index"
  end
end
