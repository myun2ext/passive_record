module PassiveRecord
  module Query
    module Parts
      module Joiner
        def join(a)
          a.join(", ")
        end
      end
    end
  end
end
