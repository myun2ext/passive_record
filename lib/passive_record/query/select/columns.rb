module PassiveRecord
  module Query
    module Select
      class Columns
        @columns = []

        def initialize(*columns)
          @columns = columns
        end

        def to_s
          @columns.join(", ")
        end
      end
    end
  end
end
