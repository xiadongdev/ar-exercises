class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true }
  validates :store_id, presence: true

  after_create :assgin_password

  private
    def assgin_password
      self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
      self.save # ---> only needed if using after_create
    end
end
