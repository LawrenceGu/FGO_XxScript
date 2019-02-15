width,height = getScreenSize()
init("0", 1); --以当前应用 Home 键在右边初始化
--默认宽度:1080, 高度:2160


require"getScreen"


--UIPart
A,B=showUI("ui.json")

--A==1 --用户确定
--A==0 --用户取消
--B 代表路径
if A==0 then
lua_exit()
end


--注意sysLog一定要大写L

sysLog("Edit1(文本框): "..B.Edit1)
sysLog("RadioGroup1: "..B.RadioGroup1)


--	    "id" : "RadioGroup1",
--	    "list" : "自动战斗,QP召唤,自动选择礼装(7列模式)",

if B.RadioGroup1=="0" then sysLog("战斗")
require"enermySelection"
require"Attack"
require"sillyKillSelection"
require"battle"
wholeBattle()
--sillyKillSelection()
end

if B.RadioGroup1=="1" then
require"自动召唤"
sysLog("自动召唤")
getScreen()
RecSummon()

end

if B.RadioGroup1=="2" then
require"自动选择"
sysLog("自动选择")
doSelect()
end












