class HomeController < ApplicationController
    
    def index
        render layout:false
    end
    
    def main
        render layout:false
    end
    
    def send_email
        name = params[:user_name]
        major = params[:user_major]
        email = params[:user_email]
        phone = params[:user_phone]
        message = params[:user_message]
        
        Email.welcome_email(name,major,email,phone,message).deliver_now
        redirect_to '/home/main'
    end
end
