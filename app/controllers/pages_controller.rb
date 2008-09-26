class PagesController < ApplicationController

  def index
    @pages = Page.find( :all )
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new( params[:page] )  
    redirect_to url_for( @page ) and return if @page.save
    render :action=>:new
  end

  def show
    @page = Page.find_by_id( params[:id] )
    redirect_to :action=>:index and return unless @page
  end

  def edit
    @page = Page.find_by_id( params[:id] )
    redirect_to :action=>:index and return unless @page
  end

  def update
    @page = Page.find_by_id( params[:id] )
    redirect_to :action=>:index and return unless @page
    @page.update_attributes( params[:page] )
    redirect_to url_for( @page ) and return if @page.save
    render :action=>:new
  end

  def destroy
    @page = Page.find_by_id( params[:id] )
    redirect_to :action=>:index and return unless @page
    @page.destroy
    redirect_to :action=>:index
  end

end
