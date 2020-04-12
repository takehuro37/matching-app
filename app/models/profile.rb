class Profile < ApplicationRecord
  # belongs_to_active_hash :hobby
  # belongs_to_active_hash :work
  has_many :profile_images
  belongs_to :user, optional: true

  VALID_NAME_REGEX = /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
  VALID_KANA_REGEX = /\A[ァ-ヶー－]+\z/

  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX }
  validates :last_name, presence: true, format: { with: VALID_NAME_REGEX }
  validates :first_name_kana, presence: true, format: { with: VALID_KANA_REGEX }
  validates :last_name_kana, presence: true, format: { with: VALID_KANA_REGEX }
  validates :birth_year, presence: true
  validates :birth_month, presence: true
  validates :birth_day, presence: true
  validates :coment, presence: true, length: { maximum: 1000 }
end
