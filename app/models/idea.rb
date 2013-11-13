class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :drafts, dependent: :destroy

end
