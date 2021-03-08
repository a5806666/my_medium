class Story < ApplicationRecord
  belongs_to :user

  validatable :title, presence: true
end
