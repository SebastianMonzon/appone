class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  default_scole { order('created_at DESC')}
end
