class BlankQuestionsController < ApplicationController
  before_action :set_blank_question, only: [:show, :edit, :update, :destroy]

  # GET /blank_questions
  # GET /blank_questions.json
  def index
    @blank_questions = BlankQuestion.all
  end

  # GET /blank_questions/1
  # GET /blank_questions/1.json
  def show
  end

  # GET /blank_questions/new
  def new
    @blank_question = BlankQuestion.new
  end

  # GET /blank_questions/1/edit
  def edit
  end

  # POST /blank_questions
  # POST /blank_questions.json
  def create
    @blank_question = BlankQuestion.new(blank_question_params)

    respond_to do |format|
      if @blank_question.save
        format.html { redirect_to @blank_question, notice: 'Blank question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blank_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @blank_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blank_questions/1
  # PATCH/PUT /blank_questions/1.json
  def update
    respond_to do |format|
      if @blank_question.update(blank_question_params)
        format.html { redirect_to @blank_question, notice: 'Blank question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blank_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blank_questions/1
  # DELETE /blank_questions/1.json
  def destroy
    @blank_question.destroy
    respond_to do |format|
      format.html { redirect_to blank_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blank_question
      @blank_question = BlankQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blank_question_params
      params.require(:blank_question).permit(:title, :content)
    end
end
