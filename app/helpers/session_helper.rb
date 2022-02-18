module SessionHelper

    def remember(user)
        remember_token = SecureRandom.urlsafe_base64
        user.remember(remember_token)
        cookies.permanent[:user_id] = user.id
        cookies.permanent[:remember_token] = remember_token
    end

    def forget(user)
        user.update(remember_digest: nil)
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
    end

    def log_out(user)
        session.delete(:user_id)
        forget(user)
      end
end
