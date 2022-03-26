function onCreate()
	-- background shit
	makeLuaSprite('stageback', '2005', -200, -150);
	setScrollFactor('stageback', 0.8, 0.95);
	scaleObject('stagefront', 1.2, 1.2);
	
	makeLuaSprite('stagefront', 'black bars', -300, 10000);
	setScrollFactor('stagefront', 0.9, 1);
	scaleObject('stagefront', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'black bars', -300, 10000);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'black bars', -300, 10000);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'black bars', -300, 10000);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end