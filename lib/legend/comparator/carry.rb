module Legend
  module Comparator
    class Carry < Base
      def sort
        summoners.sort_by do |summoner|
          summoner.stats.kills/summoner.stats.games_played
        end.reverse
      end
    end
  end
end
