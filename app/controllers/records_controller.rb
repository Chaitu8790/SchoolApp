class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  # GET /records
  # GET /records.json
  def index
    @records = Record.all
    @subjects = Subject.all
    @students = Student.all
  end

  # GET /records/1
  # GET /records/1.json
  def show
  end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create
    # binding.pry
    @record = Record.create(record_params)

    respond_to do |format|
      if @record.save
        # format.html { redirect_to action: "index" }

        format.html { redirect_to records_url }
        format.js
    # format.html { redirect_to @record, notice: 'Record was successfully created.' }
        # redirect_to action: "index"

          # redirect_to(@record)

      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end





  def recedit
   @record = Record.where(id:params[:format]).last
      if params[:record][:rmarksobt].present?
        # binding.pry
        @record.rmarksobt = params[:record][:rmarksobt].to_i
      end
      if params[:record][:rtotmarks].present?
        @record.rtotmarks = params[:record][:rtotmarks].to_i
      end
    @record.save
  

  end

  # # DELETE /records/1
  # # DELETE /records/1.json
  # def destroy
  #   @record.destroy
  #   respond_to do |format|
  #     format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.permit(:rmarksobt, :rtotmarks, :subject_id, :student_id)
    end
end
