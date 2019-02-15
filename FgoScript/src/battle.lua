function battle()
	
--	enermySelection()
--	mSleep(1000)
--	enermySelection()
--	startAttack()
--	mSleep(1000)
--	sillyKillSelection()
--	sillyAtkSelect();
	
--	mSleep(1000);
	
	enermySelection()
	mSleep(50)

	startAttack()
	mSleep(50)
	startAttack()
	mSleep(600)
	
	sillyKillSelection()
	mSleep(50)
	sillyAtkSelect();	
	mSleep(50);
end



function wholeBattle()
	getScreen()
	i=0
	j=tonumber(B.Edit1)
	repeat
		
		battle()
		i=i+1
		print("循环次数:")
		print(i)
		
		print("X: "..x.." Y: "..y)
	until i==j
end