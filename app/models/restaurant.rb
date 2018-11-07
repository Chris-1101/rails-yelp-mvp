class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # before_validation { self.category = self.category.downcase }
  # before_validate :parse_category

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }, presence: true

  # def parse_category
  #   self.category = self.category.downcase
  # end
  def category=(category)
    super(category.downcase)
  end
end
