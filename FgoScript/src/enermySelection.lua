function enermySelection()
	--touchDown(1, 45, 45)
	--mSleep(50)
	--touchUp(1, 45, 45)
	--all screen
	--y=originy*y/1080
	--x=originx*x/2160
	
	atk=0
	primaryEnermyPosX=905*x/2160
	primaryEnermyPosY=65*y/1080
	xDecrease=360*x/2160
	repeat
		touchDown(1, primaryEnermyPosX, primaryEnermyPosY);
		mSleep(20);
		touchUp(1, primaryEnermyPosX, primaryEnermyPosY);
		mSleep(20);
		atk=atk+1
		primaryEnermyPosX=primaryEnermyPosX-xDecrease
		print("enermy selected")
		
	until atk==3;
end