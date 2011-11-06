class User < ActiveRecord::Base
  acts_as_authentic
  
  after_create :first_note
    
  has_many :notes
  belongs_to :last_opened_note, :class_name => "Note"
  
  private
    def first_note
      note = Note.create!(:name => self.email, :user => self)
      self.last_opened_note = note
      self.save
    end
end
