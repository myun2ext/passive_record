require 'passive_record/query/select/columns'

module PassiveRecord
  module Query
    module Select

      def self.select(table_name, *columns)
        if columns.empty?
          columns_s = '*'
        else
          columns_s = Columns.new(columns).to_s
        end

        "SELECT #{columns_s} FROM #{table_name}"
      end
    end
  end
end
