class Section < ApplicationRecord
  #include AllowSettingIdOnCreate
  belongs_to :page
  has_many :section_edits
  has_many :admin_users, :through => :section_edits

  scope :visible,lambda{where(:visible => true)}
  scope :sorted ,lambda{order("position ASC")}
  scope :newest_first,lambda{order("created_at ASC")}
  scope :search,lambda{|query| where(["name LIKE ?","%#{query}%"])}
end
