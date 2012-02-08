class Guest < ActiveRecord::Base
  validates :name,
    :presence => true,
    :uniqueness => { :case_sensitive => false },
    :length => { :minimum => 5, :maximum => 50 }
  validates :email,
    :presence => true,
    :uniqueness => { :case_sensitive => false },
    :length => { :minimum => 5, :maximum => 50 }
  validates_format_of :email,
    :with  => /[a-z0-9!#\$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#\$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/i,
    :allow_blank => false
  validates :message,
    :presence => true,
    :uniqueness => { :case_sensitive => false },
    :length => { :minimum => 5, :maximum => 100 }
end
