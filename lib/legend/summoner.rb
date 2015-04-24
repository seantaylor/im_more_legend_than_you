module Legend
  class Summoner
    attr_reader :name, :id, :summoner_level

    def initialize(name:, id:, level:)
      @name = name
      @id = id
      @summoner_level = level
    end

    def kills
      stats.kills
    end

    def average_kills
      kills/games_played
    end

    def deaths
      stats.deaths
    end

    def assists
      stats.assists
    end

    def average_assists
      assists/games_played
    end

    def games_played
      stats.games_played
    end

    def damage_taken
      stats.damage_taken
    end

    def average_damage_taken
      damage_taken/games_played
    end

    private

    def stats
      @stats ||= Legend::Client.new.get_stats(summoner_id: id)
    end
  end
end
