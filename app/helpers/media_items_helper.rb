module MediaItemsHelper
    def watchlist_class(status)
      case status
      when "watched"
        "watchlist-watched"
      when "watching"
        "watchlist-watching"
      when "watchlist"
        "watchlist-watchlist"
      else
        ""
      end
    end
end
