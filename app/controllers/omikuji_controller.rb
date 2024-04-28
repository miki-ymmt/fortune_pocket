class OmikujiController < ApplicationController
  def show
    outcomes = [
      { luck: "めっちゃラッキー！", item: "本" },
      { luck: "最高にラッキー！", item: "リップクリーム" },
      { luck: "ちょっとラッキー！", item: "お気に入りのペン" },
      { luck: "スーパーラッキー！", item: "パソコン" },
      { luck: "ラッキー！", item: "イヤホン" },
      { luck: "まぁまぁラッキー！", item: "お守り" },
      { luck: "ラッキー！", item: "香水" },
      { luck: "最高にラッキー！", item: "ティーカップ" },
      { luck: "とってもラッキー！", item: "現金" },
      { luck: "まぁまぁラッキー！", item: "腕時計" },
      { luck: "ラッキー！", item: "フライドポテト" },
      { luck: "最高にラッキー！", item: "エコバッグ" },
      { luck: "とってもラッキー！", item: "お花"}
    ]

    outcome = outcomes.sample
    @omikuji = "#{outcome[:luck]}今日のラッキーアイテムは#{outcome[:item]}です！"
  end
end