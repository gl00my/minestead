local col = {
	[" "] = "default:glass",
  ["#"] = "wool:black",
  ["*"] = "wool:grey",
  ["."] = "wool:white",
  ["r"] = "wool:red",
  ["g"] = "wool:green",
  ["b"] = "wool:blue",
  ["y"] = "wool:yellow",
  ["n"] = "wool:brown",
  ["o"] = "wool:orange",
  ["v"] = "wool:violet",
  ["G"] = "wool:dark_green",
  ["c"] = "wool:cyan",
  ["p"] = "wool:pink",
}

local W = 16
local H = 15

function row(str)
	for i = 1, W do
		local c = str:sub(i, i)
		local n = col[c] or "default:glass"
		digiline_send("i"..tonumber(i), {slotseq = 0,
						 exmatch = true,
						 slotseq_index = 1,
						 name = n,
						 count = 1})
	end
end
pics = {
{
"rrrrrrr#gggggggg",
"rrrrrrrr#ggggggg",
"rrrrrrrr#ggggggg",
"rrrrrrrrr#gggggg",
"rrrrrrrrr#gggggg",
"rrrrrrrrr#gggggg",
"rrr####rr#gggggg",
"r##bbbb##gggggg#",
"#bbbbbbb#gggg##y",
"bbbbbbb#y####yyy",
"bbbbbb#yyyyyyyyy",
"bbbbbb#yyyyyyyyy",
"bbbbbb#yyyyyyyyy",
"bbbbbbb#yyyyyyyy",
"bbbbbbb#yyyyyyyy",
},
{
"     ######     ",
"   ##yyyyyy##   ",
"  #yyyyyyyyyy#  ",
" #yyyyyyyyyyyy# ",
" #yyy##yy##yyy# ",
"#yyyy##yy##yyyy#",
"#yyyy##yy##yyyy#",
"#yyyyyyyyyyyyyy#",
"#y#yyyyyyyyyy#y#",
"#yy##########yy#",
"#yyyyyyy#rr#yyy#",
" #yyyyyy#rr#yy# ",
" #yyyyyyy##yyy# ",
"  #yyyyyyyyyy#  ",
"   ##yyyyyy##   ",
},
{
"......yyyyy.....",
".....yyyyyyy....",
"....yy**y**yy...",
"....#*..*..*#...",
"....#*.#*#.*#...",
"....yy**y**yy...",
"....yyyyyyyyy...",
"....yy#####yy...",
"....yy##rrryy...",
"....byyyyrryb...",
"....yb#bbb#by...",
"....yybbbbbyy...",
"....yybb#bbyy...",
"....yybbbbbyy...",
"....ybbbbbbby...",
},
{
"gggyyggggggyyggg",
"ggyrygyyyygyrygg",
"ggyryyyyyyyyrygg",
"gggyy#yyyy#yyggg",
"gggy#yyyyyy#yggg",
"gggyyyyyyyyyyggg",
"ggyyy#yyyy#yyygg",
"ggyyyyy##yyyyygg",
"ggyyy#yyyy#yyygg",
"ggyyy#yyyy#yyygg",
"gggyyy####yyyggg",
"ggggyyyyyyyygggg",
"ggggryyyyyyrgggg",
"gggrrrrrrrrrrggg",
"ggrrrrrrrrrrrrgg",
},
{
"      ####      ",
"    ##****##    ",
"   #**#*#***#   ",
"  #**********#  ",
" ########****#  ",
"#yyyyyyyy#****# ",
"#########*****# ",
" #*####***#***# ",
"#*#....#**#***# ",
"#*#....#**#**## ",
"#*##..#****##*# ",
" #**##*********#",
" #*#########***#",
"  #yyy#yyyyy### ",
"  ###########   ",
},
{
"................",
".....rrrrrr.....",
"....rrrrrrrr....",
"....rrrrrrrr....",
"...rrrrrrrrrr...",
"...nnyyyyyynn...",
"...nyy#yy#yyn...",
"....yyyyyyyy....",
"....y#....#y....",
"....yy#rr#yy....",
".....yyyyyy.....",
"......yyyy......",
"..bbn*nbbn*nbb..",
".bbb***bb***bbb.",
".bbbn*nnnn*nbbb.",
},
{
"ccccccccccccccnn",
"ccccccccccccccnn",
"ccccccccccccccnn",
"ccccccccccccccnn",
"ccccccc*****c**n",
"ccc**c*******..*",
"cc*..********..*",
"cc*..*#*##*#***n",
"ccc*****##***cn#",
"ccccc***##***cn#",
"cccccc******cc#n",
"cccccc*********#",
"nnccc**********n",
"nnncc*****..ccnn",
"cnnnc****....cn#",
},
{
"......#####.....",
".....#######....",
"....#...#...#...",
"....#.#.#.#.#...",
"....#...#...#...",
"....#.yyyyy.#...",
"....##.yyy.##...",
"...##.......##..",
"...##.......##..",
"..###.......###.",
"..###.......###.",
"..#.#.......#.#.",
"....#.......#...",
".....#*###*#....",
"....yyy...yyy...",
},
{
"ggg###ggggg##ggg",
"ggg####...####gg",
"g..#........##gg",
"..#...........gg",
".##...........gg",
".#...##......ggg",
".#..###..##..#gg",
".#..##...##..#gg",
".##.......#..#gg",
".###..###...##gg",
".####..#...###gg",
".#####...#####gg",
"#############ggg",
"######ggg####ggg",
"#######g#####ggg",
},
{
"gggggggygggggggg",
"gggggyyyyygggggg",
"ggggyyyyyyyggggg",
"ggggy..y..yggggg",
"gggyy.byb.yygggg",
"gggyyyoooyyygggg",
"ggggyyyoyyyggggg",
"g.gggyyyyyggg.gg",
"g..gyyyyyyyg..gg",
"gg..y.yy.yy..ggg",
"gg....y......ggg",
"gg...........ggg",
"ggg.........gggg",
"gggg.......ggggg",
"ggggg.....gggggg",
},
{
"GoooGGGGGGGGoooG",
"G..oGooooooGo..G",
"G..oo#....#oo..G",
"GGGo#......#oGGG",
"GGooo.#..#.oooGG",
"GGo#ooppppoo#oGG",
"GG....pppp....GG",
"GGGo#..pp..#oGGG",
"GGGo#......#oGGG",
"GGGo.######.oGGG",
"GGGGo......oGGGG",
"GGGGo......oGGGG",
"GGGGGo....oGGGGG",
"GGGGGGooooGGGGGG",
"GGGGGGooooGGGGGG",
},
{
"                ",
"      nn        ",
" npnnyyyynnpn   ",
" n ny.yy.yn n   ",
"   ny#yy#yn     ",
"    yyyyyy      ",
"     yyyy       ",
"      pp  y     ",
" v yyp**py      ",
"vyv  pppp  ##   ",
" G  pppppp ##  #",
" GG  y  y  #### ",
" G   #  #  #  # ",
"gggggggggggggggg",
"GGGGGGGGGGGGGGGG",
}
}

local TO = 1

function lcd(fmt, ...)
	digiline_send("lcd", string.format(fmt, ...))
end

function draw()
	if mem.stage == 1 then
		port.a = true -- clear top line
		port.d = false -- prepare to push
		local p = pics[mem.pic]
		local l = p[mem.row]
		row(l) -- fetch row
		mem.stage = 2
	elseif mem.stage == 2 then
		port.a = false
		mem.stage = 3
	elseif mem.stage == 3 then
		port.d = true -- push line
		mem.stage = 1
		mem.row = mem.row + 1
	end
	if mem.row <= H then
		interrupt(TO)
  else
    mem.stage = 0
	end
end

if event.type == "program" then
	mem.pic = 0
	mem.prog = 'draw'
	mem.stage = 0
	lcd("Pictures: %d", #pics)
elseif event.type == "interrupt" then
	draw()
elseif event.type == "on" and mem.stage == 0 then
	mem.pic = mem.pic + 1
	mem.row = 1
	mem.stage = 1
	if mem.pic > #pics then
		mem.pic = 1
	end
	lcd("Draw: %d", mem.pic)
	interrupt(1)
elseif event.channel == "kbd" and mem.stage == 0 then
	mem.pic = (tonumber(event.msg) or 1)
	if mem.pic < 1 or mem.pic > #pics then
		mem.pic = 1
	end
	lcd("Set pic: %d", mem.pic)
	mem.pic = mem.pic - 1
end
