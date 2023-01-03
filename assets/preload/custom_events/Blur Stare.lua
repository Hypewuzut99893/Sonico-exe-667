spaceHits = 0
beatsLeft = 0

function onCreate()

	initSaveData('mechanicsDifficulty');

end

function onEvent(name, value1, value2)

	if name == 'Blur Stare' then

		if value2 ~= 'true' then

			if getDataFromSave('mechanicsDifficulty', 'level', 2) > 1 then

				setProperty('stare.alpha', 1);

				spaceHits = getRandomInt(4,8)

				if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

					beatsLeft = tonumber(value1) / 2

				else

					beatsLeft = tonumber(value1)

				end

			end

		else

			if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

				setProperty('stare.alpha', 1);

				spaceHits = getRandomInt(4,8)

				if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

					beatsLeft = tonumber(value1) / 2

				else

					beatsLeft = tonumber(value1)

				end

			end

		end

	end

end

function onBeatHit()

	beatsLeft = beatsLeft - 1

end

function onUpdate(elapsed)

	if getDataFromSave('mechanicsDifficulty', 'level', 2) == 1 then

		setProperty('stare.alpha', 0);
		setProperty('mechanic.alpha', 0);

	end

	if beatsLeft == 0 and spaceHits > 0 then

		setProperty('health', 0);

	end
	
	if keyJustPressed('space') == true then

		if spaceHits > 0 then

			spaceHits = spaceHits - 1
			
			if spaceHits == 0 then

				setProperty('stare.alpha', 0);

				playSound('confirmMenu', 0.6);

			else

				playSound('Metronome_Tick', 0.6);

			end

		end

	end

end

	