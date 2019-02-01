class MessagesController < ApplicationController
    
    def new
       @message = Message.new 
    end
    
    def create
       @message = Message.new(message_params) # Come back once messages is set up and add remainder of Chapter 19 adding associations
       if @message.save
           redirect_to messages_path
       else
           flash.now[:danger] = "Unsucessfull, - Try again.."
           render 'new'
       end
    end
    
    def show
       @message = Message.find(params[:id]) 
    end
    
    def index
       @messages = Message.all 
    end
    
    
    def destroy
       @message = Message.find(params[:id])
       @message.destroy #If using a session variable add - session[:user_id] = nil
       redirect_to messages_path
    end
    
    private
    
    def message_params
       params.require(:message).permit(:description, user_ids: [] ) 
    end
end