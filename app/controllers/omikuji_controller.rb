class OmikujiController < ApplicationController
  def show
    outcomes = [
      { luck: "めっちゃラッキー！", item: "本" },
      { luck: "最高にラッキー！", item: "靴" },
      { luck: "ちょっとラッキー！", item: "お気に入りのペン" },
      { luck: "スーパーラッキー！", item: "パソコン" },
      { luck: "ラッキー！", item: "イヤホン" },
      { luck: "かなりラッキー！", item: "お守り" },
      { luck: "ラッキー！", item: "コンビニのおにぎり" },
      { luck: "最高にラッキー！", item: "ティーカップ" },
      { luck: "ウルトララッキー！", item: "現金" },
      { luck: "まぁまぁラッキー！", item: "腕時計" },
      { luck: "ラッキー！", item: "フライドポテト" },
      { luck: "めっちゃラッキー！", item: "エコバッグ" },
      { luck: "スーパーラッキー！", item: "お花"}
    ]

    outcome = outcomes.sample
    @omikuji = "#{outcome[:luck]}今日のラッキーアイテムは#{outcome[:item]}です！"
  end
end