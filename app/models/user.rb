class User < ApplicationRecord
    belongs_to :city
    has_many :gossips

    has_secure_password


    def remember(remember_token)
        remember_digest = BCrypt::Password.create(remember_token)
        self.update(remember_digest: remember_digest)
    end

end
