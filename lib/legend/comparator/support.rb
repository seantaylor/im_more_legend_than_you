module Legend
  module Comparator
    class Support < Base
      def sort
        summoners.sort_by(&:average_assists).reverse
      end
    end
  end
end
