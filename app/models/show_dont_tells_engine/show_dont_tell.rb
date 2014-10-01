module ShowDontTellsEngine
  class ShowDontTell < ActiveRecord::Base
    has_many :presentations

    validates :date, presence: true, uniqueness: true

    accepts_nested_attributes_for :presentations, allow_destroy: true
  end
end