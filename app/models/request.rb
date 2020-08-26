class Request < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PHONE_REGEX = /\A((\+7|7|8)+([0-9]){10})\z/
    
    before_save :downcase_email

    validates :name, presence: true, length: {maximum: 50, minimum: 3}
    validates :phone, presence: true, format: {with: VALID_PHONE_REGEX}
    validates :email, presence: true, length: {maximum: 255}, 
            format: {with: VALID_EMAIL_REGEX}
    validates :text, presence: true, length: {maximum: 255}

    private

    def downcase_email 
        self.email = email.downcase
    end
end
