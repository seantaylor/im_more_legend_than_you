module Legend
  class Summoner
    def initialize(id)
      @summoner = Legend::Client.new
        .client.summoners_by_names(summoner_names: Array.wrap(id))
    end
  end
end
