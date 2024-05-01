class OmikujiController < ApplicationController
  def show #おみくじの結果をランダムで決定
    outcomes = [
      { luck: "平穏な一日になるでしょう！", item: "本", image: "books.png" },
      { luck: "新しいことを始めるのに最適な日！", item: "靴", image: "shoes.png" },
      { luck: "笑顔が絶えない一日になるでしょう！", item: "お気に入りのペン", image: "pen.png" },
      { luck: "予期せぬ素敵な出来事が起こるでしょう！", item: "パソコン", image: "laptop.png" },
      { luck: "新しい趣味に出会えるかも！", item: "イヤホン", image: "earphone.png" },
      { luck: "いいニュースが聞けるかも！", item: "お守り", image: "luckeycharm.png" },
      { luck: "潜在能力が開花します！", item: "コンビニのおにぎり", image: "onigiri.png" },
      { luck: "ゆっくりとした時間を過ごせそう！", item: "ティーカップ",  image: "teacup.png" },
      { luck: "ポジティブな変化が訪れるでしょう！", item: "現金", image: "money.png" },
      { luck: "誰かから感謝される日になるでしょう！", item: "腕時計", image: "watch.png" },
      { luck: "過去の苦労が報われる日です！", item: "フライドポテト", image: "potatoes.png" },
      { luck: "感動することがあるかも！", item: "エコバッグ", image: "ecobag.png" },
      { luck: "新しいプロジェクトが成功の予感！", item: "お花", image: "flowers.png" },
    ]

    outcome = outcomes.sample
    #result = OmikujiResult.create(luck: outcome[:luck], item: outcome[:item], image: outcome[:image])結果の保存不要かも
    @omikuji = "#{outcome[:luck]}今日のラッキーアイテムは#{outcome[:item]}です！"
    #@result_id = result.id
    @image = outcome[:image]
  end

  def show_result  #指定されたIDのおみくじ結果をデータベースから取得
    @result = OmikujiResult.find(params[:id])
    @result_id = @result.id
    @image = @result.image
  end
end