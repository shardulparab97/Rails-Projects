class Subject < ApplicationRecord
  has_many :pages
  has_many :section_edits
  scope :visible,lambda{where(:visible => true)}
  scope :sorted ,lambda{order("position ASC")}
  scope :newest_first,lambda{order("created_at ASC")}
  scope :search,lambda{|query| where(["name LIKE ?","%#{query}%"])}

end
