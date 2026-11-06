class Member < ApplicationRecord
  validates :name,
            presence: true,
            length: { maximum: 20 },
            uniqueness: true

  validate :check_height
  validate :check_weight

  private

  def check_height
    if height.nil? || height < 1
      errors.add(:height, "は1以上の数値を入力してください")
    end
  end

  def check_weight
    if weight.nil? || weight < 1
      errors.add(:weight, "は1以上の数値を入力してください")
    end
  end
end