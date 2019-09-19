require 'pry'

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
    @schoolclass = SchoolClass.new
    @schoolclass.title = params[:school_class][:title]
    @schoolclass.room_number = params[:school_class][:room_number]
    @schoolclass.save
    
  redirect_to schoolclass_path(@schoolclass)
  end

  # PATCH/PUT /schoolclasses/1
  # PATCH/PUT /schoolclasses/1.json
  def update
    
  end

  # DELETE /schoolclasses/1
  # DELETE /schoolclasses/1.json
  def destroy
    @schoolclass.destroy
    
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
