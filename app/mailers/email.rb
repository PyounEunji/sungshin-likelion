class Email < ApplicationMailer
    def welcome_email name, major, email, phone, message
        mail from: email, 
        to: 'likelion.sungshin@gmail.com', 
        subject: "[문의] #{name} / #{major}",
        body: "이메일: #{email}, 연락처: #{phone} \n메세지: #{message}"
    end
end
