module Legend
  module Comparator
    class Tank < Base
      def sort
        summoners.sort_by(&:average_damage_taken).reverse
      end
    end
  end
end
