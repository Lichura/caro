class CuestionarioController < ApplicationController
	before_action :set_respuestas, only: [:show, :edit, :update, :destroy]

	def index

	end

	def new
		@cuestionario = Cuestionario.new
	end

	def create
		@cuestionario = Cuestionario.new(set_respuestas)
		respond_to do |format|
	      if @cuestionario.save
	        format.html { redirect_to @cuestionario, notice: 'La cuestionario se creo correctamente' }
	        format.json { render :show, status: :created, location: @cuestionario }
	      else
	        format.html { render :new }
	        format.json { render json: @cuestionario.errors, status: :unprocessable_entity }
	      end
    	end
	end

	private
	def set_respuestas
		params.require(:cuestionario).permit(:nombre, :nombre1, :tiempo, :amar, :estar, :muchoTiempo, :segura, :queHarias) 
	end
end
