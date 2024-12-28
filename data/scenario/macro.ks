[eval exp="tf.first"=1 ]
;シーンチェンジmacro
;場所名称の値を獲得し、ブラック背景を通した演出を追加できる
;キャラクター登場はその後指定すること。
[macro name="scenechange"]
[chara_hide_all ]
[layopt layer="message0" visible="false"  ]
[bg storage="black.png" time="10"  ]
[layopt layer=0 visible=true]
;演出テキストを表示
[backlay]
[ptext name="align_cm_h" layer="0" x="0" y="0" size="30" color="0xFFFFFF" overwrite="true"  text="%place"] 
[trans layer="0"  time=2000]
[wt]
[freeimage layer=0]
[add_theme_button]
[layopt layer="message0" visible="true"  ]
[endmacro ]


;UI・キャラクター登場マクロ
;deleteuiマクロの逆
[macro name="showui"]
[freeimage layer=0]
[add_theme_button]
[layopt layer="message0" visible="true"  ]
[endmacro ]

;UI・キャラクター削除マクロ
;シーンチェンジからテロップ機能を抜いたもの。
[macro name="deleteui"]
[chara_hide_all ]
[layopt layer="message0" visible="false"  ]
[endmacro ]

;flash_Effectマクロ
;値なし
;画面発光効果
[macro name="flash_effect"]
[mask effect="fadeIn" color="%color|0xF5F5F5" graphic="%graphic" folder="image" time="%in_time|80"]
[mask_off effect="fadeOut" time="%out_time|160"]
[endmacro]

;キャラ登場
;配置が自動的に＋100される      
[macro name="charashow" ]
[chara_show name="%chara_name" top="100"  ]
[endmacro ]
[return ]