class ClassesController < ApplicationController
    def index
        # @enrollment = Enrollment.where(user_id: current_user)
    end

    def new
        @classe = Classe.new
    end

    def create
        @classe = Classe.new
        # @classe.user = current_user
        # @enrollment.classe = Classe.find(params[:class_id])
        @classe.save
        redirect_to teacher_courses_path
    end

    def destroy
        Classe.find(params[:id]).destroy
        redirect_to teacher_courses_path
        # respond_to do |format|
        #   format.html { redirect_to booking_url, notice: "Booking was successfully destroyed." }
        #   format.json { head :no_content }
        # end
    end
end
