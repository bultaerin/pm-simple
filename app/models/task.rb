class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete' ] }

STATUS_OPTIONS = [
  ['Not started', 'not-started'],
  ['In progress', 'in-progress'],
  ['Complete', 'complete']
]

def badge_colour
  case status
  when 'not-started'
    'secondary'
  when 'in-progress'
    'info'
  when 'complete'
    'success'

    end

    def complete?
      status == 'complete'
    end

    def in_progress?
      status == 'in-progress'
    end

    def not started?
      status == 'not-started'
    end

  end
end
