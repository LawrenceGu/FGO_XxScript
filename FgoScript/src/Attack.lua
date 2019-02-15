--all screen
	--y=originy*y/1080
	--x=originx*x/2160
require"getScreen"

function startAttack()
	
	--select Attack button
	--x, y = findMultiColorInRegionFuzzy(0x072364,"17|-6|0xffffff,-52|30|0x0184d8,4|54|0x005cc6,-3|-61|0x00e8fd,-56|-61|0xf3e9e3,60|-60|0xf2e8e1", 95, 893, 372, 1279, 720, 0, 0)
	--if x > -1 then
	--	touchDown(1, x, y);
	--	mSleep(100);
	--	touchUp(1, x, y);
	--end
	Xstk=1830*x/2160
	Ystk=1020*y/1080
	touchDown(1, Xstk, Ystk);
	mSleep(50);
	touchUp(1, Xstk, Ystk);
	mSleep(50);
	touchDown(1, Xstk, Ystk);
	mSleep(50);
	touchUp(1, Xstk, Ystk);
	mSleep(50);

	print("attack start")
end

function sillyAtkSelect()
	atk=0
	fstCardPosX=312*x/2160
	fstCardPosY=685*y/1080
	xIncrement=385*x/2160
	repeat		
		--x, y = findMultiColorInRegionFuzzy(0xfa5ba5,"21|0|0x3b3b35,66|42|0xfbd471,-40|-45|0xac120f", 95, 1, 311, 1283, 653, 0, 0)
		--if x > -1 then
		--mSleep(90);
		--touchDown(1, x, y);
		--mSleep(90);
		--touchUp(1, x, y);
		--atk=atk+1
		--print("attack card selected")
		--else
		
		touchDown(1, fstCardPosX, fstCardPosY);
		mSleep(20);
		touchUp(1, fstCardPosX, fstCardPosY);
		mSleep(20);
		atk=atk+1
		fstCardPosX=fstCardPosX+xIncrement
		print("attack card selected")
		--end
	until atk==4;
end

