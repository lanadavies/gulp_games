class Round < ApplicationRecord
  belongs_to :tournament
  belongs_to :winner, class_name: 'Contestant'
end
