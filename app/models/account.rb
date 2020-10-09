class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

         has_many :properties


        #  user = @user
        #  user.email = "you@gmail.id"
        #  user.password = "yourPassword"
        #  user.skip_confirmation!
        #  user.save

        def full_name
          "#{first_name} #{last_name}"
        end

        def company
          "test company"
        end
end
