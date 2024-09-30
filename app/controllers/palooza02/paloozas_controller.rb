# app/controllers/palooza02/palooza02/paloozas_controller.rb
require_dependency "palooza02/application_controller"

module Palooza02
  class PaloozasController < ApplicationController
    before_action :set_palooza, only: [:show, :edit, :update, :destroy]

    def index
      @paloozas = Palooza.all
    end

    def show
    end

    def new
      @palooza = Palooza.new
    end

    def create
      @palooza = Palooza.new(palooza_params)
      if @palooza.save
        redirect_to @palooza, notice: 'Palooza was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @palooza.update(palooza_params)
        redirect_to @palooza, notice: 'Palooza was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @palooza.destroy
      redirect_to paloozas_url, notice: 'Palooza was successfully destroyed.'
    end

    private

    def set_palooza
      @palooza = Palooza.find(params[:id])
    end

    def palooza_params
      params.require(:palooza).permit(:title, :content, :published_at)
    end
  end
end
