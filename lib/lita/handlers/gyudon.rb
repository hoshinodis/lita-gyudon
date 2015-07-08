module Lita
  module Handlers
    class Gyudon < Handler
      route(/gyudon/i, :gyudon) # 正規表現にマッチしたら、指定されたメソッド名を呼び出す
      route(/牛丼/i, :gyudon)

      def gyudon(response)
        gyudonList = %w(チーズ キムチ カレー合いかけ ネギ玉 山かけ).freeze
        gyudonPlz = "あ、#{gyudonList.sample}牛丼中盛りツユダクで。"
        response.reply(gyudonPlz)
      end
    end

    Lita.register_handler(Gyudon)
  end
end
