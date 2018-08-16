class Comment < ApplicationRecord
  validates :title, presence: true
  validates :name, length:{minimum:1 ,maximum:10}
  validates :email, presence: true
  validates :comments, presence: true
  validates :day, presence: true
end
