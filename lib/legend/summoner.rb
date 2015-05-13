module Legend
  class Summoner
    attr_reader :name, :id, :summoner_level

    def initialize(name:, id:, level:)
      @name = name
      @id = id
      @summoner_level = level
    end

    def stats
      @stats ||= Legend::Client.new.get_stats(summoner_id: id)
    end
  end
end
