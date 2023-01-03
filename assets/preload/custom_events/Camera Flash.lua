function onEvent(name, value1, value2)

	if name == 'Camera Flash' then

		if value2 == 'false' then

			if flashingLights then

				cameraFlash('other', 'ffffff', tonumber(value1), true);

			end

		elseif value2 == 'true' then

			cameraFlash('other', 'ffffff', tonumber(value1), true);

		end		

	end

end