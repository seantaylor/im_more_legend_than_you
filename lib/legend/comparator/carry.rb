module Legend
  module Comparator
    class Carry < Base
      def sort
        @summoners.sort_by(&:average_kills).reverse
      end
    end
  end
end
