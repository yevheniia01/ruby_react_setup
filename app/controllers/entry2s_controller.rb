class Entry2sController < ApplicationController
  before_action :set_entry2, only: %i[ show edit update destroy ]

  # GET /entry2s or /entry2s.json
  def index
    @entry2s = Entry2.all
  end

  # GET /entry2s/1 or /entry2s/1.json
  def show
  end

  # GET /entry2s/new
  def new
    @entry2 = Entry2.new
  end

  # GET /entry2s/1/edit
  def edit
  end

  # POST /entry2s or /entry2s.json
  def create
    @entry2 = Entry2.new(entry2_params)

    respond_to do |format|
      if @entry2.save
        format.html { redirect_to @entry2, notice: "Entry2 was successfully created." }
        format.json { render :show, status: :created, location: @entry2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry2s/1 or /entry2s/1.json
  def update
    respond_to do |format|
      if @entry2.update(entry2_params)
        format.html { redirect_to @entry2, notice: "Entry2 was successfully updated." }
        format.json { render :show, status: :ok, location: @entry2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry2s/1 or /entry2s/1.json
  def destroy
    @entry2.destroy
    respond_to do |format|
      format.html { redirect_to entry2s_url, notice: "Entry2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry2
      @entry2 = Entry2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry2_params
      params.require(:entry2).permit(:meal_type, :calories, :proteins, :carbs, :fats)
    end
end
