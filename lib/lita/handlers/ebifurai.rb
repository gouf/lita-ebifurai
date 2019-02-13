module Lita
  module Handlers
    class Ebifurai < Handler
      # insert handler code here
      route /ebifurai/, :ebifurai

      def ebifurai(response)
        reply_message =
          ::Shindan::Scraper.new(865730, random_name)
            .shindan
            .lines
            .first
            .chomp

        response.reply reply_message
      end

      def random_name
        [*(1..100), *('a'..'z'), *('A'..'Z')].sample(10).join
      end

      Lita.register_handler(self)
    end
  end
end
