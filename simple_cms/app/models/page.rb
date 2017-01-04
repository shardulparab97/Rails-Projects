class Page < ApplicationRecord
  belongs_to :subject,{:optional =>false}
  #belongs to in Page class because foreign key is here
  has_many :sections
  has_and_belongs_to_many :admin_users #, :join_table => "admin_users_pages" -optional,ruby understands by itself

  scope :visible,lambda{where(:visible => true)}
  scope :sorted ,lambda{order("position ASC")}
  scope :newest_first,lambda{order("created_at ASC")}
  scope :search,lambda{|query| where(["name LIKE ?","%#{query}%"])}
end
