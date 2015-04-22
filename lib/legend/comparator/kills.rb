module Legend
  module Comparator
    class Kills
      def initialize(summoners:)
        @summoners = summoners
      end

      def sort
        @summoners.sort_by(&:average_kills).reverse
      end

      private

      attr_reader :summoners
    end
  end
end
