class App < ActiveRecord::Base
  has_many :servers
  attr_accessible :dev_lead, :name, :support_lead
  validates :name, :dev_lead, :support_lead, presence: true
  validates :name, uniqueness: true
  before_destroy :ensure_not_referenced_by_any_server

  private

  def ensure_not_referenced_by_any_server
    if servers.empty?
      return true
    else
      errors.add(:base, "There are still servers that are associated with the #{self.name} application!")
      return false
    end
  end
end
