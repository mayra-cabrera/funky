class StarwarsController < ApplicationController
  before_action :set_starwar, only: [:show, :edit, :update, :destroy]

  # GET /starwars
  # GET /starwars.json
  def index
    @starwars = Starwar.all
  end

  # GET /starwars/1
  # GET /starwars/1.json
  def show
  end

  # GET /starwars/new
  def new
    @starwar = Starwar.new
  end

  # GET /starwars/1/edit
  def edit
  end

  # POST /starwars
  # POST /starwars.json
  def create
    @starwar = Starwar.new(starwar_params)

    respond_to do |format|
      if @starwar.save
        format.html { redirect_to @starwar, notice: 'Starwar was successfully created.' }
        format.json { render :show, status: :created, location: @starwar }
      else
        format.html { render :new }
        format.json { render json: @starwar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starwars/1
  # PATCH/PUT /starwars/1.json
  def update
    respond_to do |format|
      if @starwar.update(starwar_params)
        format.html { redirect_to @starwar, notice: 'Starwar was successfully updated.' }
        format.json { render :show, status: :ok, location: @starwar }
      else
        format.html { render :edit }
        format.json { render json: @starwar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starwars/1
  # DELETE /starwars/1.json
  def destroy
    @starwar.destroy
    respond_to do |format|
      format.html { redirect_to starwars_url, notice: 'Starwar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starwar
      @starwar = Starwar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def starwar_params
      params.fetch(:starwar, {})
    end
end
