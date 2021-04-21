class TemperaturesController < ApplicationController
    before_action :set_procedure
    before_action :set_temperature, only: %i[ edit update destroy ]
  
    def new
      @temperature = @procedure.temperatures.new
    end
    
      # GET /procedures/1/edit
    def edit
    end
  
    def create
      @temperature = @procedure.temperatures.create!(temperature_params)
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @procedure }
      end
    end

       # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @temperature.update(temperature_params)
        format.turbo_stream
        format.html { redirect_to @temperature, notice: "temperature was successfully updated." }
        format.json { render :show, status: :ok, location: @temperature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temperature.errors, status: :unprocessable_entity }
      end
    end
  end
  
    private
  
    def set_procedure
      @procedure = Procedure.find(params[:procedure_id])
    end
  
    def set_temperature
      @temperature = @procedure.temperatures.find(params[:id])
    end
  
    def temperature_params
      params.require(:temperature).permit(:title)
    end
  
end