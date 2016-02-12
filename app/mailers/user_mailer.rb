class UserMailer < ApplicationMailer
    default from: "danthehudson@gmail.com"
    
    def contact_form(email, name, message)
        @message = message
            mail(:from => email,
            :to => 'danthehudson@gmail.com',
            :subject => "A new message from #{name}")
    end
    
    def order_confirmation(email, product_name)
        mail( :to => email,
        :subject => "Your Purchase with Sophisticated Airhead",
        )
    end
end
