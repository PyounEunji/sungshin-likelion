class Email < ApplicationMailer
    def welcome_email name, major, email, phone, message
        mail from: email, 
        to: 'sungshin@likelion.net', 
        subject: "[문의] #{name} / #{major}",
        body: "이메일: #{email}, 연락처: #{phone} \n메세지: #{message}"
    end
end
