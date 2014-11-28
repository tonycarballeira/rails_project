class TodoItem < ActiveRecord::Base
	belongs_to :list
	validates :state, inclusion: 1..4
	scope :backlog, -> { where(state: 1) }
	scope :complete, -> { where(state: 4) }
	scope :in_progress, -> { where(state: 3)}
	scope :ready, -> { where(state: 2)}

	def status
		case state
			when 2 then "Ready"
			when 4 then "Complete"
			when 3 then "In Progress"
			when 1 then "Backlog"
		end
	end	
	
end
