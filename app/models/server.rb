class Server < ActiveRecord::Base
  belongs_to :environment
  belongs_to :app
  default_scope :order => 'environment_id, app_id, name'
  attr_accessible :app_id, :app_last_updated, :app_version, :environment_id, :name, :os, :os_last_updated, :os_version
  validates :name, :app_id, :environment_id, presence: true
end
