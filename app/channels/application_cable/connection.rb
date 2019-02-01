module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :user
    
    def connect
      
    end
    
    def disconnect
      
    end
    
    protected
    def find_user
      if @user = User.find(params[:id]) 
        @user
      else
        reject_unauthorized_connection
      end
    end
  end
end
