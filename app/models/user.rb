class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum role: {
    'WellChecker' => 0,
    'WellChecker Recipient' => 1,
    'Organization' => 2
  }
end
