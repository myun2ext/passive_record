module PassiveRecord
  module Query
    module CreateTable
      def create_table(table_name, *columns)
        "CREATE TABLE #{table_name} (#{columns})"
      end
    end
  end
end
