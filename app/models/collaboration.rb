class Collaboratation < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :wikis
end
