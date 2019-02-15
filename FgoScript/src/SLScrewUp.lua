--all screen
--y=originy*y/1080
--x=originx*x/2160

function ScrewUp(x1,y1)
	b=0
	rowHeight=100
	touchDown(1, x1,y1)
	repeat
	touchMove(1, x1,y1)
	
	b=b+1
	y1=y1-b
	until y1<rowHeight
	touchUp(1, x1,y1-b)
	
end