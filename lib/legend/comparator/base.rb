module Legend
  module Comparator
    class Base
      def initialize(summoners:)
        @summoners = summoners
      end

      def sort
        raise NotImplementedError.new('Should be implemented in subclass')
      end

      private

      attr_reader :summoners

    end
  end

end
