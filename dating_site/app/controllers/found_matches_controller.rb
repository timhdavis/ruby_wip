class FoundMatchesController < ApplicationController
  before_action :set_found_match, only: [:show, :edit, :update, :destroy]

  # GET /found_matches
  # GET /found_matches.json
  def index
    @found_matches = FoundMatch.all
  end

  # GET /found_matches/1
  # GET /found_matches/1.json
  def show
  end

  # GET /found_matches/new
  def new
    @found_match = FoundMatch.new
  end

  # GET /found_matches/1/edit
  def edit
  end

  # POST /found_matches
  # POST /found_matches.json
  def create
    @found_match = FoundMatch.new(found_match_params)

    respond_to do |format|
      if @found_match.save
        format.html { redirect_to @found_match, notice: 'Found match was successfully created.' }
        format.json { render :show, status: :created, location: @found_match }
      else
        format.html { render :new }
        format.json { render json: @found_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /found_matches/1
  # PATCH/PUT /found_matches/1.json
  def update
    respond_to do |format|
      if @found_match.update(found_match_params)
        format.html { redirect_to @found_match, notice: 'Found match was successfully updated.' }
        format.json { render :show, status: :ok, location: @found_match }
      else
        format.html { render :edit }
        format.json { render json: @found_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /found_matches/1
  # DELETE /found_matches/1.json
  def destroy
    @found_match.destroy
    respond_to do |format|
      format.html { redirect_to found_matches_url, notice: 'Found match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_found_match
      @found_match = FoundMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def found_match_params
      params.require(:found_match).permit(:name)
    end
end
