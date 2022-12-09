class RecipesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def create
        user = User.find(session[:user_id])
        recipe = Exercise.create(user_id: user.id, name: exercise_params[:name], type: exercise_params[:type], sets: exercise_params[:sets], weight: exercise_params[:weight], duration: exercise_params[:duration])
        if exercise.valid?
            render json: exercise, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def index
        user = User.find(session[:user_id])
        exercises = Exercise.all
        render json: exercises, status: ok
    end

    private
    def exercise_params
      params.permit(:user_id, :name, :type, :sets, :weight, :duration)
    end

    def record_not_found
        render json: { errors: ["Not Authorized"] }, status: unauthorized
    end
