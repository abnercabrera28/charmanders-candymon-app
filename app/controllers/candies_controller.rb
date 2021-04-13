class CandiesController < ApplicationController
  before_action :set_candy, only: %i[ show edit update destroy ]

  # GET /candies or /candies.json
  def index
    @candies = Candy.all
  end

  # GET /candies/1 or /candies/1.json
  def show
  end

  # GET /candies/new
  def new
    @candy = Candy.new
  end

  # GET /candies/1/edit
  def edit
  end

  # POST /candies or /candies.json
  def create
    @candy = Candy.new(candy_params)

    respond_to do |format|
      if @candy.save
        format.html { redirect_to @candy, notice: "Candy was successfully created." }
        format.json { render :show, status: :created, location: @candy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candies/1 or /candies/1.json
  def update
    respond_to do |format|
      if @candy.update(candy_params)
        format.html { redirect_to @candy, notice: "Candy was successfully updated." }
        format.json { render :show, status: :ok, location: @candy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candies/1 or /candies/1.json
  def destroy
    @candy.destroy
    respond_to do |format|
      format.html { redirect_to candies_url, notice: "Candy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candy
      @candy = Candy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def candy_params
      params.require(:candy).permit(:name, :flavor, :category, :texture, :price)
    end
end
