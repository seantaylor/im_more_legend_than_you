module Legend
  module Comparator
    class Base
      def initialize(summoners:)
        @summoners = summoners
      end

      private

      attr_reader :summoners

    end
  end

end
