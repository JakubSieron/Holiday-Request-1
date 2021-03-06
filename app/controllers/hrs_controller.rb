class HrsController < ApplicationController
	before_action :find_hr, only: [:show, :edit, :update, :destroy]

	def index
		@hrs = Hr.all.order("created_at DESC")
	end

    def show
	end

	def new
		@hr = current_employee.hr.build
	end

	def create
		@hr = current_employee.hr.build(hr_params)

		if @hr.save
			redirect_to @hr
		else
			render'new'
		end
	end

	def edit
	end

	def update
		if @hr.update(hr_params)
			redirect_to @hr
		else 
			render 'edit'
		end
	end

	def destroy
		@hr.destroy
		redirect_to root_path
	end

	private

	def find_hr
		@hr = Hr.find(params[:id])
	end

	def hr_params
		params.require(:hr).permit(:from, :to)
	end
end
