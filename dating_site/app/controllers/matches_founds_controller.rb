class MatchesFoundsController < ApplicationController
  before_action :set_matches_found, only: [:show, :edit, :update, :destroy]

  # GET /matches_founds
  # GET /matches_founds.json
  def index
    @matches_founds = MatchesFound.all
  end

  # GET /matches_founds/1
  # GET /matches_founds/1.json
  def show
  end

  # GET /matches_founds/new
  def new
    @matches_found = MatchesFound.new
  end

  # GET /matches_founds/1/edit
  def edit
  end

  # POST /matches_founds
  # POST /matches_founds.json
  def create
    @matches_found = MatchesFound.new(matches_found_params)

    respond_to do |format|
      if @matches_found.save
        format.html { redirect_to @matches_found, notice: 'Matches found was successfully created.' }
        format.json { render :show, status: :created, location: @matches_found }
      else
        format.html { render :new }
        format.json { render json: @matches_found.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches_founds/1
  # PATCH/PUT /matches_founds/1.json
  def update
    respond_to do |format|
      if @matches_found.update(matches_found_params)
        format.html { redirect_to @matches_found, notice: 'Matches found was successfully updated.' }
        format.json { render :show, status: :ok, location: @matches_found }
      else
        format.html { render :edit }
        format.json { render json: @matches_found.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches_founds/1
  # DELETE /matches_founds/1.json
  def destroy
    @matches_found.destroy
    respond_to do |format|
      format.html { redirect_to matches_founds_url, notice: 'Matches found was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matches_found
      @matches_found = MatchesFound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matches_found_params
      params.require(:matches_found).permit(:name)
    end
end
