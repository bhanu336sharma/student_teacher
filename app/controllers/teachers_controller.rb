class TeachersController < ApplicationController
	def new
		@teacher= Teacher.new 
		@teacher.students.build
	end
	def create	
	# binding.pry		
		@teacher = Teacher.create(teacher_params)
		# @teacher.students.create()
		
		if @teacher.save
			redirect_to "/"
		else
			render "/new"
		end
	end

	def teacher_params  
		params.require(:teacher).permit(:name, students_attributes: [ :id, :name, :roll_no ])
	end


end

