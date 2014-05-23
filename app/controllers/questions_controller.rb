class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.image = params[:thing][:image]
    @question.q = params[:thing][:q]
    @question.a1 = params[:thing][:a1]
    @question.a1s = params[:thing][:a1s].to_i
    @question.a2 = params[:thing][:a2]
    @question.a2s = params[:thing][:a2s].to_i
    @question.a3 = params[:thing][:a3]
    @question.a3s = params[:thing][:a3s].to_i
    @question.a4 = params[:thing][:a4]
    @question.a4s = params[:thing][:a4s].to_i
    @question.save!
    redirect_to :action => :index
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.image = params[:question][:image]
    @question.q = params[:question][:q]
    @question.a1 = params[:question][:a1]
    @question.a1s = params[:question][:a1s]
    @question.a2 = params[:question][:a2]
    @question.a2s = params[:question][:a2s]
    @question.a3 = params[:question][:a3]
    @question.a3s = params[:question][:a3s]
    @question.a4 = params[:question][:a4]
    @question.a4s = params[:question][:a4s]
    @question.save!
    redirect_to :action => :index
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy!
    redirect_to :action => :index
  end
end
