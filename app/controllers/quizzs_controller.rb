class QuizzsController < ApplicationController

  def new
    @quiz = Quizz.new
  end

  def index

  end

  def show

  end

  def create
    @quiz = Quizz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to quizzs_url, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def quiz_params
    params.require(:quizz).permit(:name, :job_title, :time_limit, :introduction, :instructions)
  end
end
