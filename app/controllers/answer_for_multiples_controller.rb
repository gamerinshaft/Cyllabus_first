class AnswerForMultiplesController < ApplicationController
  before_action :set_answer_for_multiple, only: [:show, :edit, :update, :destroy]

  # GET /answer_for_multiples
  # GET /answer_for_multiples.json
  def index
    @answer_for_multiples = AnswerForMultiple.all
  end

  # GET /answer_for_multiples/1
  # GET /answer_for_multiples/1.json
  def show
  end

  # GET /answer_for_multiples/new
  def new
    @answer_for_multiple = AnswerForMultiple.new
  end

  # GET /answer_for_multiples/1/edit
  def edit
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:multiple_choice_question_id])
    @company = Company.find(params[:company_id])
    @answer_for_multiple = @multiple_choice_question.answer_for_multiples.find(params[:id])
  end

  # POST /answer_for_multiples
  # POST /answer_for_multiples.json
  def create
    @multiple_choice_question = MultipleChoiceQuestion.find(params[:multiple_choice_question_id])
    @answer_for_multiple = @multiple_choice_question.answer_for_multiples.build(answer_for_multiple_params)
    @company = Company.find(params[:company_id])

    respond_to do |format|
      if @answer_for_multiple.save
        format.html { redirect_to company_multiple_choice_question_path(@company, @multiple_choice_question), notice: 'Answer for multiple was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_for_multiple }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_for_multiple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_for_multiples/1
  # PATCH/PUT /answer_for_multiples/1.json
  def update
    respond_to do |format|
      if @answer_for_multiple.update(answer_for_multiple_params)
        format.html { redirect_to @answer_for_multiple, notice: 'Answer for multiple was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_for_multiple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_for_multiples/1
  # DELETE /answer_for_multiples/1.json
  def destroy
    @answer_for_multiple.destroy
    respond_to do |format|
      format.html { redirect_to answer_for_multiples_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_for_multiple
      @answer_for_multiple = AnswerForMultiple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_for_multiple_params
      params.require(:answer_for_multiple).permit(:check, :content)
    end
end
