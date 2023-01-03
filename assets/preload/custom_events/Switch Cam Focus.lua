function onEvent(name, value1, value2)

	if name == 'Switch Cam Focus' then

		cameraSetTarget(tostring(value1));

	end

end