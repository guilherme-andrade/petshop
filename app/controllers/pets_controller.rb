class PetsController < ApplicationController
	def index
		@pets = Pet.all
	end

	def show
		# params[:id]
		@pet = Pet.find(params[:id])
	end

	def new
		@pet = Pet.new
	end

	def create
		@pet = Pet.new(pet_params)
		if @pet.save
			redirect_to @pet, notice: 'Your pet was successfully created'
		else
			render :new, alert: 'Your pet sucked'
		end
	end

	def edit
		@pet = Pet.find(params[:id])
	end

	def update
		@pet = Pet.find(params[:id])

		if @pet.update(pet_params)
			redirect_to @pet, notice: 'Your pet was successfully updated'
		else
			render :edit, alert: 'Your pet sucked'
		end
	end

	def destroy
		@pet = Pet.find(params[:id])
		if @pet.destroy
			redirect_to pets_path, notice: 'Your pet was successfully killed'
		else
			redirect_to :back
		end
	end

	def pet_params
		params.require(:pet).permit(:name, :species, :date_found, :address)
	end
end
