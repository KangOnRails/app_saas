class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            flash[:success] = "Message Sent" # Flash Notice 
            redirect_to new_contact_path
        else 
            flash[:danger] = "Message not sent ID10T ERROR occured"
            redirect_to new_contact_path
            
        end
    end
end


private
    def contact_params
         params.require(:contact).permit(:name, :email, :comments) # White list the name email and comment for security purposes
    end