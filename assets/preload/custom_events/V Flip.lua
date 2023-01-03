flipped = false

function onCreate()

	initSaveData('mechanicsDifficulty');

end

function onEvent(name, value1, value2)

	if name == 'V Flip' then

		if flipped == false then

			if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

				for i = 0, 7 do

					if downscroll then

						noteTweenY(tostring(i)..'yeah', i, 50, value1, 'cubeOut');
						noteTweenDirection(tostring(i), i, 270, value1, 'cubeOut');
						flipped = true

					else

						noteTweenY(tostring(i)..'yeah', i, 570, value1, 'cubeOut');
						noteTweenDirection(tostring(i), i, 270, value1, 'cubeOut');
						flipped = true

					end

				end

			end

		else

			if getDataFromSave('mechanicsDifficulty', 'level', 2) == 3 then

				for i = 0, 7 do

					if downscroll then

						setPropertyFromGroup(tostring(i)..'yeah', i, 570, value1, 'cubeOut');
						noteTweenDirection(tostring(i), i, 90, value1, 'cubeOut');
						flipped = false

					else

						noteTweenY(tostring(i)..'yeah', i, 50, value1, 'cubeOut');
						noteTweenDirection(tostring(i), i, 90, value1, 'cubeOut');
						flipped = false

					end

				end

			end

		end

	end

end

function onUpdatePost(elapsed)

	for i = 0, getProperty('unspawnNotes.length') - 1 do

		setPropertyFromGroup('notes', i, 'angle', 0);

	end

end