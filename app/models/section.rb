class Section < ActiveRecord::Base
  belongs_to :note
  default_scope order(:id)
end
