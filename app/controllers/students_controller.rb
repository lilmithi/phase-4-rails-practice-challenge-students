class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students, status: :ok
    end

    def show
        student = find_student
        render json: student, status: :ok
    end

    def create
        student = Student.create!(student_params)
        render json: student, status: :created
    end

    def update
        student = find_student
        student.update!(student_params)
        render json: student, status: :ok
    end

    def destroy
        student = find_student
        student.destroy
        render json: {}, status: :no_content
    end

    private

    def student_params
        params.permit(:name, :major, :age)
    end

    def find_student
        Student.find_by(id: params[:id])
    end
end
