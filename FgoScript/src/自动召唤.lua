width,height = getScreenSize()
init("0", 1); --以当前应用 Home 键在右边初始化
--默认宽度:1080, 高度:2160

require"getScreen"

	--all screen
	--y=originy*y/1080
	--x=originx*x/2160

xPos=1370*x/2160
yPos=820*y/1080
yRPos=1000*y/1080

function TenSummonConfirm()

touchDown(1, xPos, yPos)
mSleep(50)
touchMove(1, xPos, yPos)
mSleep(50)
touchUp(1, xPos, yPos)
print("Ready for rummon")
end

function RSummon()
touchDown(1, xPos, yRPos)
mSleep(50)
touchMove(1, xPos, yRPos)
mSleep(50)
touchUp(1, xPos, yRPos)
print("summon confirmmed")
end


function RecSummon()
i=0
j=tonumber(B.Edit1)
--j:循环次数
repeat
TenSummonConfirm()
RSummon()
mSleep(50)
RSummon()
mSleep(50)


i=i+1
print("round:")
print(i)
until i==j
end
