module Legend
  class Client
    attr_reader :client

    def initialize
      @client = Taric.client(region: :na)
    end
  end
end
