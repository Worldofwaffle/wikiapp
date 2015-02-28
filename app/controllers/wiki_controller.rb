class WikiController < ApplicationController
  def index
     @wikis = Wiki.all
  end

  def show
     @wiki = Wiki.find(params[:id])
    authorize @wiki
  end

  def new
    @wiki = Wiki.new
    authorize @wiki
  end

  def edit
  end
end
