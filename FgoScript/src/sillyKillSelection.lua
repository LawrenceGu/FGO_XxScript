	--all screen
	--y=originy*y/1080
	--x=originx*x/2160
require"getScreen"


function sillyKillSelection()
	skl=0
	fstKillCardPosX=738*x/2160
	fstKillCardPosY=230*y/1080
	xIncrement2=347*x/2160
	repeat
		
		touchDown(1, fstKillCardPosX, fstKillCardPosY);
		mSleep(50);
		touchUp(1, fstKillCardPosX, fstKillCardPosY);
		mSleep(50);
		skl=skl+1
		fstKillCardPosX=fstKillCardPosX+xIncrement2
		print("the "..skl.." skill selected..Xposition: "..fstKillCardPosX.."  Yposition: "..fstKillCardPosY)
	until skl==3;
end