class MultipleChoiceQuestionsController < ApplicationController
  before_action :set_multiple_choice_question, only: [:show, :edit, :update, :destroy]

  # GET /multiple_choice_questions
  # GET /multiple_choice_questions.json
  def index
    @company = Company.find(params[:company_id])
    @multiple_choice_questions = MultipleChoiceQuestion.all
  end

  # GET /multiple_choice_questions/1
  # GET /multiple_choice_questions/1.json
  def show
    @company = Company.find(params[:company_id])
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
    @answer_for_multiple = @multiple_choice_question.answer_for_multiples.build

  end

  # GET /multiple_choice_questions/new
  def new
    @company = Company.find(params[:company_id])
    @multiple_choice_question = MultipleChoiceQuestion.new
  end

  # GET /multiple_choice_questions/1/edit
  def edit
    @company = Company.find(params[:company_id])
  end

  # POST /multiple_choice_questions
  # POST /multiple_choice_questions.json
  def create
    @company = Company.find(params[:company_id])
    @multiple_choice_question = @company.multiple_choice_questions.build(multiple_choice_question_params)

    respond_to do |format|
      if @multiple_choice_question.save
        format.html { redirect_to company_multiple_choice_question_path(@company, @multiple_choice_question), notice: 'Multiple choice question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @multiple_choice_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @multiple_choice_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multiple_choice_questions/1
  # PATCH/PUT /multiple_choice_questions/1.json
  def update
    respond_to do |format|
      if @multiple_choice_question.update(multiple_choice_question_params)
        format.html { redirect_to @multiple_choice_question, notice: 'Multiple choice question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @multiple_choice_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiple_choice_questions/1
  # DELETE /multiple_choice_questions/1.json
  def destroy
    @multiple_choice_question.destroy
    respond_to do |format|
      format.html { redirect_to company_multiple_choice_questions_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiple_choice_question
      @multiple_choice_question = MultipleChoiceQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multiple_choice_question_params
      params.require(:multiple_choice_question).permit(:title, :content)
    end
end
