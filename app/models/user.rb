class User < ActiveRecord::Base
  acts_as_authentic
  
  after_create :first_note
    
  has_many :notes
  belongs_to :last_opened_note, :class_name => "Note"
  
  private
    def first_note
      note = Note.create!(:user => self)
      note.sections.create!(:content => "this is your very first note\ncome on, have a play")
      self.last_opened_note = note
      self.save
    end
end
