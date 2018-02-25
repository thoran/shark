module IG
  class Service

    DEAL_HOST = "https://deal.ig.com"

    def initialize
      uri = URI("#{ENV['IG_API_HOST']}/gateway/deal/session")
      Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
        request = Net::HTTP::Post.new uri

        request["X-IG-API-KEY"] = ENV["IG_API_KEY"]
        request["Content-Type"] = "application/json"
        request["Accept"] = "application/json; charset=UTF-8"

        res = http.request(request, {
          "identifier" => ENV["IG_USERNAME"],
          "password" => ENV["IG_PASSWORD"]
        }.to_json)
        puts res.code

        @cst = res.header["CST"]
        puts @cst
        @xst = res.header["X-SECURITY-TOKEN"]
        puts xst
      end
    end

    def xst
      @xst
    end

    def cst
      @cst
    end

    def get(url, options = {})
      puts "GET #{url}"
      uri = URI(url)
      Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
        request = Net::HTTP::Get.new uri

        options[:headers].to_a.each do |key, value|
          request[key] = value
        end

        request["X-IG-API-KEY"] = ENV["IG_API_KEY"]
        request["Content-Type"] = "application/json; charset=UTF-8"
        request["Accept"] = "application/json; charset=UTF-8"
        request["X-SECURITY-TOKEN"] = options[:xst] || xst
        request["CST"] = options[:cst] || cst
        request["IG-ACCOUNT-ID"] = ENV["IG_ACCOUNT_ID"]

        res = http.request(request)
        puts res.code

        JSON.parse(res.body)
      end
    end

    def watchlist(list_id)
      get("#{ENV['IG_API_HOST']}/gateway/deal/watchlists/#{list_id}")
    end

    def watchlists
      get("#{ENV['IG_API_HOST']}/gateway/deal/watchlists")
    end

    def signals
      get("#{DEAL_HOST}/signals-gateway/signalsFiltered/0/1000", 
          cst: "",
          xst: ""
         )
    end
    
    def price(epic, start_date, end_date, page_number = 1)
      resolution = "MINUTE"

      get("#{ENV['IG_API_HOST']}/gateway/deal/prices/#{epic}?resolution=#{resolution}&from=#{start_date}&to=#{end_date}&pageSize=20&pageNumber=#{page_number}", headers: { "Version" => "3" })
    end

  end
end
