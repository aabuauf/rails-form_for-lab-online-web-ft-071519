class SchoolclassesController < ApplicationController
  before_action :set_schoolClass, only: [:show, :edit, :update, :destroy]

  # GET /schoolclasses
  # GET /schoolclasses.json
  def index
    @schoolclasses = SchoolClass.all
  end

  # GET /schoolclasses/1
  # GET /schoolclasses/1.json
  def show
  end

  # GET /schoolclasses/new
  def new
    @schoolclass = SchoolClass.new
  end

  # GET /schoolclasses/1/edit
  def edit
  end

  # POST /schoolclasses
  # POST /schoolclasses.json
  def create
    @schoolclass = SchoolClass.new(schoolclass_params)

    respond_to do |format|
      if @schoolclass.save
        format.html { redirect_to @schoolclass, notice: 'SchoolClass was successfully created.' }
        format.json { render :show, status: :created, location: @schoolclass }
      else
        format.html { render :new }
        format.json { render json: @schoolclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schoolclasses/1
  # PATCH/PUT /schoolclasses/1.json
  def update
    respond_to do |format|
      if @schoolclass.update(schoolclass_params)
        format.html { redirect_to @schoolclass, notice: 'SchoolClass was successfully updated.' }
        format.json { render :show, status: :ok, location: @schoolclass }
      else
        format.html { render :edit }
        format.json { render json: @schoolclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schoolclasses/1
  # DELETE /schoolclasses/1.json
  def destroy
    @schoolclass.destroy
    respond_to do |format|
      format.html { redirect_to schoolclasses_url, notice: 'SchoolClass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schoolclass
      @schoolclass = SchoolClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schoolclass_params
      params.fetch(:schoolclass, {})
    end
end
