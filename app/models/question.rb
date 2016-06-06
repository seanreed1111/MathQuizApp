class Question < ActiveRecord::Base
  validates :text, presence: true
  validates :ls, presence: true
  validates :ls_type, presence: true
end
