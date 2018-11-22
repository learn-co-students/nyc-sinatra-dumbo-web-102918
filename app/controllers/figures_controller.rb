class FiguresController < ApplicationController
  # add controller methods

get '/figures' do
  @figures = Figure.all
  erb :'figures/index'
end

 get '/figures/new' do
   @titles = Title.all
   @landmarks = Landmark.all
   erb :'figures/new'
 end

post '/figures' do
  @title = Title.create(params[:title])
  @figure = Figure.create(params[:figure])
  if @title
    @figure.titles << @title
  end
  erb :'figures/show'
end

get '/figures/:id' do
  @figure = Figure.find_by_id(:id)
  erb :'figures/show'
end



end
