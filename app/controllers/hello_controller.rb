class HelloController < ApplicationController

  def index
    @name = params[:name] || 'world'
    if ( ! params[:name].nil? )
      session[:name] = @name
    end
  end

end
