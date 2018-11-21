class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @figure = Figure.new
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    redirect to '/figures'
  end

  get '/figures/:id' do
    @figure = fetch_figure
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure_id = params[:id]
    @figure = fetch_figure
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    @figure = fetch_figure
    @figure.update(params[:figure])
    redirect to "/figures/#{@figure.id}"
  end

  def fetch_figure
    @figure = Figure.find(params[:id])
  end
end
