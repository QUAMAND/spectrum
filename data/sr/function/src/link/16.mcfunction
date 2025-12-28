$data modify storage sr:output color.r1 set from storage sr: 16[$(hr1)]
$data modify storage sr:output color.r2 set from storage sr: 16[$(hr2)]
$data modify storage sr:output color.g1 set from storage sr: 16[$(hg1)]
$data modify storage sr:output color.g2 set from storage sr: 16[$(hg2)]
$data modify storage sr:output color.b1 set from storage sr: 16[$(hb1)]
$data modify storage sr:output color.b2 set from storage sr: 16[$(hb2)]

data modify storage sr:output color.text set from storage sr:data text[0]
function sr:src/link/flatting with storage sr:output color
data remove storage sr:data text[0]