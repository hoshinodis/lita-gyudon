module Lita
  module Handlers
    class Gyudon < Handler
      route(/gyudon/i, :gyudon) # 正規表現にマッチしたら、指定されたメソッド名を呼び出す
      route(/牛丼/i, :gyudon)

      def gyudon(response)
        gyudon_list = %w(チーズ キムチ カレー合いかけ ネギ玉 山かけ).freeze
        gyudon_plz = "あ、#{gyudon_list.sample}牛丼中盛りツユダクで。"
        response.reply(gyudon_plz)
      end
    end

    Lita.register_handler(Gyudon)
  end
end
