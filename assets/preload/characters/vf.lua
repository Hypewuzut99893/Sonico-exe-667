function onUpdate(elapsed)

	if getProperty('health') < 0.4 then

		setHealthBarColors('79BCB0','9B76EE');

	else

		setHealthBarColors('79BCB0', '31B0D1');

	end

end