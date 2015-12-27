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
    @responses = Vote.where(response: @question.response)
    @responses2 = Vote.where(response: @question.response2)
    @responses3 = Vote.where(response: @question.response3)
    @responses4 = Vote.where(response: @question.response4)

  end

  def show_result
    @question = Question.find(params[:id])
    @votes = Vote.where(question_id: (params[:id]))
    @trues = @votes.where(answer: true).size
    @falses = @votes.where(answer: false).size
    @responses = Vote.where(response: @question.response)
    @responses2 = Vote.where(response: @question.response2)
    @responses3 = Vote.where(response: @question.response3)
    @responses4 = Vote.where(response: @question.response4)
  end


  private

  def question_params
    params.require(:question).permit(:name, :is_boolean, :response, :response2, :response3, :response4)
  end


end
