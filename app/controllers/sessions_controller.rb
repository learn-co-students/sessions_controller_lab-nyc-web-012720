class SessionsController < ApplicationController
  def new
    
  end

  def create
      # session[:name] = params[:name]
      if session[:name]== nil
        redirect_to sessions_new_path	
      end
      if params[:name]
        session[:name] = params[:name]
        # redirect_to logout_path
      end 
      
  end

  def destroy
    if session[:name]== nil
      redirect_to sessions_new_path	
    end
    if session[:name]
      session.delete :name
    end 
    
  end

end
