module Legend
  class AggregateStats

    # When LoL gives us stats they break it down by champion then give us
    # Champion '0' which is everything aggregated
    ALL_CHAMPIONS = 0

    def initialize(raw_data:)
      @raw_data = raw_data
    end

    def kills
      all_champion_data['totalChampionKills']
    end

    def assists
      all_champion_data['totalAssists']
    end

    def deaths
      all_champion_data['totalDeathsPerSession']
    end

    def games_played
      all_champion_data['totalSessionsPlayed']
    end

    private

    def all_champion_data
      @all_champion_data ||= raw_data['champions'].select{ |x| x['id'] == ALL_CHAMPIONS }.first['stats']
    end

    attr_reader :raw_data

  end
end
