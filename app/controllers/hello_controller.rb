class HelloController < ApplicationController

  def index
    @name = params[:name] || 'world'
  end

end
