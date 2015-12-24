class QuestionsController <ApplicationController

  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to "/new/poll"
  end

  def show
    @question = Question.find(params[:id])
    @votes = Vote.where(question_id: (params[:id]))
    @trues = @votes.where(answer: true).size
    @falses = @votes.where(answer: false).size
  end



  private

  def question_params
    params.require(:question).permit(:name)
  end


end