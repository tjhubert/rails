class Twoot < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true,
  				   length: {maximum: 150}

end