
[cm]

@clearstack
@bg storage ="創作デスゲーム.png" time=50
@wait time = 200
;全く理由はわからないが、このボタンでだけ反応します。
*start 
[button x=50 y=230 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart"]
[button x=50 y=320 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" ]
;[button x=50 y=410 graphic="title/button_config.png" enterimg="title/button_config2.png" target="config" ]
;何らかのバグで動作してくれないんで、ゲーム内で対応する。
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"

;本当は使う予定だった。
;*config
;[jump storage="../others/plugin/theme_kopanda_09_1/config.ks" ]