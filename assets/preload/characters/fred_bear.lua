missesLeft = 5

function onCreatePost()

	initSaveData('mechanicsDifficulty');

	if getDataFromSave('mechanicsDifficulty', 'level', 2) > 1 then

		makeLuaText('missCount', 'MISSES LEFT:', 280, 0, 0);
		screenCenter('missCount', 'x')
		setTextSize('missCount', 32);
		setTextAlignment('missCount', 'left');
		setObjectCamera('missCount', 'hud');
		addLuaText('missCount', true);

		if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

			missesLeft = 1

		end

	end

	setProperty('dad.alpha', 0);
	setProperty('rankles.alpha', 0);
	makeLuaSprite('credit', 'fred_bear/credit', 0, 0);
	setObjectCamera('credit', 'hud');
	screenCenter('credit');
	addLuaSprite('credit', true);


end

function noteMiss(id, direction, noteType, isSustainNote)

	if getDataFromSave('mechanicsDifficulty', 'level', 2) > 1 then

		if not isSustainNote then

			missesLeft = missesLeft - 1

		end

	end

end

function onUpdate(elapsed)

	setProperty('iconP1.visible', false);
	setProperty('iconP2.visible', false);

	if getDataFromSave('mechanicsDifficulty', 'level', 2) > 1 then

		setProperty('missCount.y', getProperty('healthBar.y') - 12)
		setTextString('missCount', 'MISSES LEFT: '..tostring(missesLeft));
		setProperty('health', 0.4 * missesLeft);

	end

end

function onBeatHit(curBeat)

	if getProperty('curBeat') == 32 then

		doTweenAlpha('cred', 'credit', 0, crochet / 125, 'linear');
		doTweenAlpha('fredy', 'dad', 1, crochet / 125, 'linear');

	end

	if getProperty('curBeat') == 40 then

		setProperty('rankles.alpha', 1);

	end

end