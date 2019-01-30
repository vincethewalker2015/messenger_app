class UsersController < ApplicationController
    
    def new
       @user = User.new 
    end
    
    def create
       @user = User.new(user_params) # Come back once messages is set up and add remainder of Chapter 19 adding associations
       if @user.save
           flash[:success] = "Your Profile has been sucessfully created"
           redirect_to user_path(@user)
       else
           flash.now[:danger] = "Unsucessfull, - Try again.."
           render 'new'
       end
    end
    
    def show
       @user = User.find(params[:id]) 
    end
    
    def edit
       @user = User.find(params[:id])  
    end
    
    def update
       @user = User.find(params[:id])
       if @user.update(user_params)
           flash.now[:success] = "User Details updated"
           redirect_to user_path(@user)
       else
           render 'edit'
       end
    end
    
    def destroy
       @user = User.find(params[:id])
       @user.destroy #If using a session variable add - session[:user_id] = nil
       flash.now[:danger] = "User Deleted"
       redirect_to root_path
    end
    
    private
    
    def user_params
       params.require(:user).permit(:name, :email) 
    end
    
    
end