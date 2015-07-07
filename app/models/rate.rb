class Rate < ActiveRecord::Base
  has_and_belongs_to_many :banks
  
  scope :weekly, -> { where(:created_at => 1.week.ago..Time.now) }
  scope :dollar, -> { where(:currency => 'ДОЛЛАР') }

  def self.recent_rates
    Rate.where("created_at >= ?", 1.day.ago.utc)
  end
end