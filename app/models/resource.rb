class Resource < ActiveRecord::Base
  belongs_to :state
  belongs_to :municipality
  belongs_to :department

  GENRE = ["Form Examples", "Marketing", "Case Studies"]
end
