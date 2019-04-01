class MarksController < ApplicationController
  respond_to do |format|
      format.html
    end
  def index
    @marksAlf = Mark.text_search(params[:query]).page(params[:page]).order(:name)
    @marksDate = Mark.text_search(params[:query]).page(params[:page])
    gon.Alf = Mark.text_search(params[:query]).page(params[:page]).order(:name)
    gon.Date = Mark.text_search(params[:query]).page(params[:page])

    gon.m = gon.Date
        @marks = gon.m
  end

  def show
    @mark = Mark.find(params[:id])
    @products = @mark.products.all
  end
end
