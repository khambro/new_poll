class QuestionsController <ApplicationController

  def index
    @questions = Question.all
  end


  def create
    @question = Question.new(question_params)
    if @question.save
      @user = User.new()
      @user.question_id = @question.id
      @user.save
      @image = Image.new(params.require(:image).permit!)
      @image.image_file = params[:image_file]
      @image.question_id = @question.id
      @image.save

      redirect_to "/new/poll", notice: "Your question has been submitted!"
    end
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
    @images = Image.where(question_id: @question.id)
    @images.each do |i|
      @image1 = i.image_file
      @image2 = i.image_file_two
      @image3 = i.image_file_three
      @image4 = i.image_file_four
    end
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

  # def image_params
  #   params.require(:image).permit(:image_file, :image_file_two, :image_file_three, :image_file_four)
  # end

  def user_params
    params.require(:user).permit(:question_id, :tidbit)
  end


end
