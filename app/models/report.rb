class Report < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :student, presence: true
  validates :volunteer, presence: true
  validates :visitor, presence: true
end
