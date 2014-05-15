class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  validates :content, length: {maximum: 150}, allow_blank: true
end
