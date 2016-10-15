class CreateAreaService
  AREAS = %w(大雪山系 富良野岳・三段山・十勝周辺 ニセコ山系・羊蹄山 札幌、小樽周辺 北海道その他道東、知床、日高等 八甲田・岩木山 岩手山・八幡平 蔵王山系 鳥海山・月山 朝日連峰・飯豊山 磐梯・安達太良・天元台・吾妻連峰 東北その他 尾瀬・至仏山・武尊山 谷川岳・かぐら・巻機山・平標山 守門岳・浅草岳・越後駒・会津駒 志賀高原・草津白根山 頚城山系・妙高・雨飾山・大渚山・戸隠・黒姫山 上信越その他 富士山・八ヶ岳・蓼科 鹿島槍・五竜岳・白馬岳 剱・立山・槍ケ岳・穂高岳 乗鞍高原・御嶽山・宝剣岳 中部その他 白山山系 氷ノ山・大山 関西その他 日本以外 投稿練習用)

  def call
    AREAS.each do |area|
      Area.find_or_create_by!(name: area)
    end
  end
end