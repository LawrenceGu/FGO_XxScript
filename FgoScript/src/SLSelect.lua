--all screen
--y=originy*y/1080
--x=originx*x/2160


function RowSelect()
	XPosion=324*x/2160
	--列位置
	XPosionIncrement=200*x/2160
	coloum=0
	--目标列
	repeat
		touchDown(1, XPosion, Yposion);
		mSleep(20);
		touchUp(1, XPosion, Yposion);
		mSleep(20);
		coloum=coloum+1
		print("column "..coloum..", row "..row.." selected")
		XPosion=XPosion+XPosionIncrement
	until
	coloum==7
end



function Round()
	
	Yposion=370*y/1080
	--行位置
	YposionIncrement=213*y/1080
	row=0
	repeat
		RowSelect()
		row=row+1
		
		mSleep(20)
		Yposion=Yposion+YposionIncrement
	until
	row==4
end