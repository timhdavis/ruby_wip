class MatchOptionsController < ApplicationController
  before_action :set_match_option, only: [:show, :edit, :update, :destroy]

  # GET /match_options
  # GET /match_options.json
  def index
    @match_options = MatchOption.all
  end

  # GET /match_options/1
  # GET /match_options/1.json
  def show
  end

  # GET /match_options/new
  def new
    @match_option = MatchOption.new
  end

  # GET /match_options/1/edit
  def edit
  end

  # POST /match_options
  # POST /match_options.json
  def create
    @match_option = MatchOption.new(match_option_params)

    respond_to do |format|
      if @match_option.save
        format.html { redirect_to @match_option, notice: 'Match option was successfully created.' }
        format.json { render :show, status: :created, location: @match_option }
      else
        format.html { render :new }
        format.json { render json: @match_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_options/1
  # PATCH/PUT /match_options/1.json
  def update
    respond_to do |format|
      if @match_option.update(match_option_params)
        format.html { redirect_to @match_option, notice: 'Match option was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_option }
      else
        format.html { render :edit }
        format.json { render json: @match_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_options/1
  # DELETE /match_options/1.json
  def destroy
    @match_option.destroy
    respond_to do |format|
      format.html { redirect_to match_options_url, notice: 'Match option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_option
      @match_option = MatchOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_option_params
      params.require(:match_option).permit(:type, :requirement, :importance)
    end
end
