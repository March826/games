class PlaysController < ApplicationController
  def index
    @plays = Play.all 
    @questions = Question.last(10)
  end
def show
end
  def create
    @play = Play.new
    @questions = Question.first(1)
    @play.username = params[:play][:username]
    @play.score = 0
    @play.save!
    redirect_to :action => :index 
  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])
    @play.score  = params[:user][:score]
    @play.save!
    redirect_to :action => :index 
  end

  def destroy
    @play = Play.find(params[:id])
    @play.destroy!
    redirect_to :action => :index 
  end

  def new
    @play = Play.new
  end
end
