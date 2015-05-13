module Legend
  module Comparator
    class Tank < Base
      def sort
        summoners.sort_by do |summoner|
          summoner.stats.damage_taken/summoner.stats.games_played
        end.reverse
      end
    end
  end
end
