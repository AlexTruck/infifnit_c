class Bank < ActiveRecord::Base
  has_and_belongs_to_many :rates

  def self.total_on(date)
    where("date(created_at) = ?", date).sum(:name)
  end
end
