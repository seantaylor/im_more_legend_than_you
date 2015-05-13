module Legend
  module Comparator
    class Support < Base
      def sort
        summoners.sort_by do |summoner|
          summoner.stats.assists/summoner.stats.games_played
        end.reverse
      end
    end
  end
end
