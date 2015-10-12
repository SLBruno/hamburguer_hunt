class HamburguerController < ApplicationController
    before_action :find_hamburguer, only: [:show, :edit, :update, :destroy]
    

def index
end

def create
    @hamburguer = Hamburguer.new(hamburguer_params)
end

def show
end

def new
    @hamburguer = Hamburguer.new
end

private

def find_hamburguer
    @hamburguer = Hamburguer.find(params[:id])
end
end

def hamburguer_params
    params.require(:hamburguer).permit(:title,:description)
end

