class PlaysController < ApplicationController
  def index
    @plays = Play.all 
    @questions = Question.all
  end
def show
end
  def create
    @questions = Question.all
    @play = Play.new
    @play.username = params[:play][:username]
    @play.score  = params[:play][:score]
    @play.save!
    redirect_to :action => :index 
  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])
    @play.score  = params[:play][:score]
    @play.save!
    redirect_to :action => :index 
  end

  def destroy
    @play = Play.find(params[:id])
    @play.destroy!
    redirect_to :action => :index 
  end

  def new
    #render 'test'
    @play = Play.new
    @questions = Question.all
  end
end
