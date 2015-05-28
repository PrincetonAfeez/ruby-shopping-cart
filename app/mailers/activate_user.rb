class ActivateUser < ApplicationMailer
  default from: "postmaster@sandbox85de68cfe3374124bbdc3dc74188403e.mailgun.org"
  
  def user_activate(user)
    @user = user
    @subject = "账号激活"
    @to = user.email
    mail to: @to, subject: @subject 
  end

end
