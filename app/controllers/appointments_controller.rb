class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find_by_id(params[:id])
        @patient = Patient.find_by_id(@appointment.patient_id)
        @doctor = Doctor.find_by_id(@appointment.doctor_id)
    end
end