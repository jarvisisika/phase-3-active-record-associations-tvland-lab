class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors , through: :characters
    belongs_to :network
    
    def actors_list
      actors.select{|show| show.full_name.first}.map(&:full_name)
    end
  end