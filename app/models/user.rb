class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    wellchecker: 'WellChecker',
    wellchecker_recipient: 'WellChecker Recipient',
    organization: 'Organization'
  }
end
