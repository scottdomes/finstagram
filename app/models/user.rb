class User < ActiveRecord::Base

  def reset_password(password)
    self.update({ password: password })
  end
end