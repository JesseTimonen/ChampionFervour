-- Save options --
function saveOptions()

    -- Fixes issue where french client was adding invalid data to array
    for key,value in pairs(options) do
        if (key ~= "xPos"
        and key ~= "yPos"
        and key ~= "fervourBarGap"
        and key ~= "fervourBarLenght"
        and key ~= "fervourBarHeight"
        and key ~= "enableMovement"
        and key ~= "hideOutOfCombat"
        and key ~= "displayNumber"
        and key ~= "pip_1_color"
        and key ~= "pip_2_color"
        and key ~= "pip_3_color"
        and key ~= "pip_4_color"
        and key ~= "pip_5_color") then
            options[key] = nil;
        end
    end

    options["pip_1_color"]["R"] = numberToStringMinMax(options["pip_1_color"]["R"], 0, 1);
    options["pip_1_color"]["G"] = numberToStringMinMax(options["pip_1_color"]["G"], 0, 1);
    options["pip_1_color"]["B"] = numberToStringMinMax(options["pip_1_color"]["B"], 0, 1);
    options["pip_2_color"]["R"] = numberToStringMinMax(options["pip_2_color"]["R"], 0, 1);
    options["pip_2_color"]["G"] = numberToStringMinMax(options["pip_2_color"]["G"], 0, 1);
    options["pip_2_color"]["B"] = numberToStringMinMax(options["pip_2_color"]["B"], 0, 1);
    options["pip_3_color"]["R"] = numberToStringMinMax(options["pip_3_color"]["R"], 0, 1);
    options["pip_3_color"]["G"] = numberToStringMinMax(options["pip_3_color"]["G"], 0, 1);
    options["pip_3_color"]["B"] = numberToStringMinMax(options["pip_3_color"]["B"], 0, 1);
    options["pip_4_color"]["R"] = numberToStringMinMax(options["pip_4_color"]["R"], 0, 1);
    options["pip_4_color"]["G"] = numberToStringMinMax(options["pip_4_color"]["G"], 0, 1);
    options["pip_4_color"]["B"] = numberToStringMinMax(options["pip_4_color"]["B"], 0, 1);
    options["pip_5_color"]["R"] = numberToStringMinMax(options["pip_5_color"]["R"], 0, 1);
    options["pip_5_color"]["G"] = numberToStringMinMax(options["pip_5_color"]["G"], 0, 1);
    options["pip_5_color"]["B"] = numberToStringMinMax(options["pip_5_color"]["B"], 0, 1);

    Turbine.PluginData.Save(Turbine.DataScope.Character, settingsFileName, options);
end


-- Turns strings to numbers between min and max value --
function numberToStringMinMax(value, min, max)
	if value == nil then return tostring(min); end
	if value < min then return tostring(min); end
	if value > max then return tostring(max); end
	return tostring(value):gsub(",", ".");
end



-- Load options --
function loadOptions()

    local _options = Turbine.PluginData.Load(Turbine.DataScope.Character, settingsFileName)
    if _options ~= nil then

        if (_options["xPos"] == nil) then
            _options["xPos"] = options["xPos"];
        end

        if (_options["yPos"] == nil) then
            _options["yPos"] = options["yPos"];
        end

        if (_options["enableMovement"] == nil) then
            _options["enableMovement"] = options["enableMovement"];
        end

        if (_options["fervourBarGap"] == nil) then
            _options["fervourBarGap"] = options["fervourBarGap"];
        end

        if (_options["fervourBarLenght"] == nil) then
            _options["fervourBarLenght"] = options["fervourBarLenght"];
        end

        if (_options["fervourBarHeight"] == nil) then
            _options["fervourBarHeight"] = options["fervourBarHeight"];
        end

        if (_options["hideOutOfCombat"] == nil) then
            _options["hideOutOfCombat"] = options["hideOutOfCombat"];
        end

        if (_options["displayNumber"] == nil) then
            _options["displayNumber"] = options["displayNumber"];
        end

        if (_options["pip_1_color"] == nil) then
            _options["pip_1_color"] = options["pip_1_color"];
        end

        if (_options["pip_2_color"] == nil) then
            _options["pip_2_color"] = options["pip_2_color"];
        end

        if (_options["pip_3_color"] == nil) then
            _options["pip_3_color"] = options["pip_3_color"];
        end

        if (_options["pip_4_color"] == nil) then
            _options["pip_4_color"] = options["pip_4_color"];
        end

        if (_options["pip_5_color"] == nil) then
            _options["pip_5_color"] = options["pip_5_color"];
        end

        options = _options;

        options["pip_1_color"] = toColor(options["pip_1_color"]["R"], options["pip_1_color"]["G"], options["pip_1_color"]["B"])
        options["pip_2_color"] = toColor(options["pip_2_color"]["R"], options["pip_2_color"]["G"], options["pip_2_color"]["B"])
        options["pip_3_color"] = toColor(options["pip_3_color"]["R"], options["pip_3_color"]["G"], options["pip_3_color"]["B"])
        options["pip_4_color"] = toColor(options["pip_4_color"]["R"], options["pip_4_color"]["G"], options["pip_4_color"]["B"])
        options["pip_5_color"] = toColor(options["pip_5_color"]["R"], options["pip_5_color"]["G"], options["pip_5_color"]["B"])
    end
end


-- Turns RGB values to turbine color objects --
function toColor(r, g, b)

	if (tonumber(r) == nil) or (tonumber(g) == nil) or (tonumber(b) == nil) then
		-- Try to fix numbers by chaning "." to "," --
		r = r:gsub("%.", ",");
		g = g:gsub("%.", ",");
		b = b:gsub("%.", ",");
	end

	return Turbine.UI.Color(tonumber(r), tonumber(g), tonumber(b));
end