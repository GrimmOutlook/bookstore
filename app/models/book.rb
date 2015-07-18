class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :categories
  belongs_to :publisher
end
