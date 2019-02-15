width,height = getScreenSize()
init("0", 1); --以当前应用 Home 键在右边初始化
--一列七个模式

require"getScreen"
require"SLScrewUp"
require"SLSelect"

--all screen
--y=originy*y/1080
--x=originx*x/2160


xSU=316*x/2160
ySU=920*y/1080
function doSelect()
	i=0
	repeat
		Round()
		ScrewUp(xSU,ySU)
		i=i+1
	until
	i==tonumber(B.Edit1)
	
end

