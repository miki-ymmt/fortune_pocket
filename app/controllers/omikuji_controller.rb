class OmikujiController < ApplicationController
  def show #おみくじの結果をランダムで決定
    outcomes = [
      { luck: "めっちゃラッキー！", item: "本", image: "books.png" },
      { luck: "最高にラッキー！", item: "靴", image: "shoes.png" },
      { luck: "ちょっとラッキー！", item: "お気に入りのペン", image: "pen.png" },
      { luck: "スーパーラッキー！", item: "パソコン", image: "laptop.png" },
      { luck: "ラッキー！", item: "イヤホン", image: "earphone.png" },
      { luck: "かなりラッキー！", item: "お守り", image: "luckeycharm.png" },
      { luck: "ラッキー！", item: "コンビニのおにぎり", image: "onigiri.png" },
      { luck: "最高にラッキー！", item: "ティーカップ",  image: "teacup.png" },
      { luck: "ウルトララッキー！", item: "現金", image: "money.png" },
      { luck: "まぁまぁラッキー！", item: "腕時計", image: "watch.png" },
      { luck: "ラッキー！", item: "フライドポテト", image: "potatoes.png" },
      { luck: "めっちゃラッキー！", item: "エコバッグ", image: "ecobag.png" },
      { luck: "スーパーラッキー！", item: "お花", image: "flowers.png" },
    ]

    outcome = outcomes.sample
    result = OmikujiResult.create(luck: outcome[:luck], item: outcome[:item], image: outcome[:image])
    @omikuji = "#{outcome[:luck]}今日のラッキーアイテムは#{outcome[:item]}です！"
    @result_id = result.id
    @image = outcome[:image]
  end

  def show_result  #指定されたIDのおみくじ結果をデータベースから取得
    @result = OmikujiResult.find(params[:id])
    @result_id = @result.id
    @image = @result.image
  end
end