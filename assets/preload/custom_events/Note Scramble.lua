function onCreate()

	initSaveData('mechanicsDifficulty');

end

function onEvent(name, value1, value2)

	if name == 'Note Scramble' then

		for i = 4, 7 do

			if getDataFromSave('mechanicsDifficulty', 'level', 2) > 1 then

				setPropertyFromGroup('strumLineNotes', i, 'x', getRandomInt(256, 923));

				if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

					setPropertyFromGroup('strumLineNotes', i, 'alpha', getRandomInt(5, 10) / 10);
					setPropertyFromGroup('strumLineNotes', i, 'direction', getRandomInt(0, 5) * 90);
					setPropertyFromGroup('strumLineNotes', i, 'angle', getPropertyFromGroup('strumLineNotes', i, 'direction'));

				end

				if downscroll then

					setPropertyFromGroup('strumLineNotes', i, 'y', getRandomInt(500, 720));

				else

					setPropertyFromGroup('strumLineNotes', i, 'y', getRandomInt(0, 220));

				end

			end

		end

	end

end