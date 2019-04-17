class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validate :must_carry_mens_or_womens_apparel

  before_destroy :can_destroy?

  def must_carry_mens_or_womens_apparel
    errors.add(:mens_apparel, "must carry the men's or women's apparel") unless (mens_apparel || womens_apparel)
    errors.add(:womens_apparel, "must carry the men's or women's apparel") unless (mens_apparel || womens_apparel)
  end

  private 

  def can_destroy?
    if employees.size > 0
      throw :abort
    end
  end
end
