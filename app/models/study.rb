class Study < ApplicationRecord
  validates :date, presence: true
  validates :activity, presence: true
end
