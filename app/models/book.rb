class Book < ActiveRecord::Base
  belongs_to :library
  belongs_to :author

  validates_presence_of :title, :author
end