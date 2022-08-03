class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user


        def badge_colour
          case status
          when 'not-started'
            'secondary'
          when 'in-progress'
            'info'
          when 'complete'
            'success'

            end

      end

      def status
        return 'not-started' if tasks.nons?

        if tasks.all? { |task task.complete}
          'complete'
        else if  tasks.any? { |task| task.in_progress? }
        'in-progress'
      else
        'not-started'
      end
    end
    def percent_complete
      return 0 if tasks.none?

      ((total_complete. to_f /total_tasks) * 100).round
  end

  def total_complete
    tasks.select{ |task| task.complete?}.count
  end

  def total_tasks
    taks.count
  end
