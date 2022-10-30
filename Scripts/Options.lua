plugin.GetOptionsPanel = function(self)

	-- Create Options Panel --
	optionsPanel = Turbine.UI.Control();
	optionsPanel:SetSize(500, 830);


	-- Options title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Settings");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(0, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("ChampionFervour/Images/optionsTitleBackground.tga"));


	-- Allow movement --
	option_allowMovement_label = Turbine.UI.Label();
	option_allowMovement_label:SetParent(optionsPanel);
	option_allowMovement_label:SetSize(300, 30);
	option_allowMovement_label:SetPosition(110, 70);
	option_allowMovement_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_allowMovement_label:SetText("Allow movement");
	option_allowMovement_label:SetForeColor(Turbine.UI.Color.White);
	option_allowMovement_checkbox = Turbine.UI.Lotro.CheckBox();
	option_allowMovement_checkbox:SetParent(optionsPanel);
	option_allowMovement_checkbox:SetSize(20, 20);
	option_allowMovement_checkbox:SetPosition(80, 69);
	option_allowMovement_checkbox:SetChecked(options["enableMovement"]);


	-- Display fervour number --
	option_displayNumber_label = Turbine.UI.Label();
	option_displayNumber_label:SetParent(optionsPanel);
	option_displayNumber_label:SetSize(300, 30);
	option_displayNumber_label:SetPosition(110, 95);
	option_displayNumber_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_displayNumber_label:SetText("Display number");
	option_displayNumber_label:SetForeColor(Turbine.UI.Color.White);
	option_displayNumber_checkbox = Turbine.UI.Lotro.CheckBox();
	option_displayNumber_checkbox:SetParent(optionsPanel);
	option_displayNumber_checkbox:SetSize(20, 20);
	option_displayNumber_checkbox:SetPosition(80, 94);
	option_displayNumber_checkbox:SetChecked(options["displayNumber"]);


	-- Hide out of combat --
	option_hideOutOfCombat_label = Turbine.UI.Label();
	option_hideOutOfCombat_label:SetParent(optionsPanel);
	option_hideOutOfCombat_label:SetSize(300, 30);
	option_hideOutOfCombat_label:SetPosition(110, 120);
	option_hideOutOfCombat_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_hideOutOfCombat_label:SetText("Hide when out of combat");
	option_hideOutOfCombat_label:SetForeColor(Turbine.UI.Color.White);
	option_hideOutOfCombat_checkbox = Turbine.UI.Lotro.CheckBox();
	option_hideOutOfCombat_checkbox:SetParent(optionsPanel);
	option_hideOutOfCombat_checkbox:SetSize(20, 20);
	option_hideOutOfCombat_checkbox:SetPosition(80, 119);
	option_hideOutOfCombat_checkbox:SetChecked(options["hideOutOfCombat"]);


	-- FervourBarLenght --
	option_fervourBarLenght_label = Turbine.UI.Label();
	option_fervourBarLenght_label:SetParent(optionsPanel);
	option_fervourBarLenght_label:SetSize(300, 30);
	option_fervourBarLenght_label:SetPosition(80, 150);
	option_fervourBarLenght_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_fervourBarLenght_label:SetText("Bar Lenght");
	option_fervourBarLenght_label:SetForeColor(Turbine.UI.Color.White);
	option_fervourBarLenght_textbox = Turbine.UI.Lotro.TextBox();
	option_fervourBarLenght_textbox:SetParent(optionsPanel);
	option_fervourBarLenght_textbox:SetMultiline(false);
	option_fervourBarLenght_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_fervourBarLenght_textbox:SetText(options["fervourBarLenght"]);
	option_fervourBarLenght_textbox:SetSize(100, 20);
	option_fervourBarLenght_textbox:SetPosition(80, 170);
	option_fervourBarLenght_textbox:SetZOrder(100);
	option_fervourBarLenght_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_fervourBarLenght_textbox:SetText(option_fervourBarLenght_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- FervourBarHeight --
	option_fervourBarHeight_label = Turbine.UI.Label();
	option_fervourBarHeight_label:SetParent(optionsPanel);
	option_fervourBarHeight_label:SetSize(300, 30);
	option_fervourBarHeight_label:SetPosition(80, 200);
	option_fervourBarHeight_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_fervourBarHeight_label:SetText("Bar Height");
	option_fervourBarHeight_label:SetForeColor(Turbine.UI.Color.White);
	option_fervourBarHeight_textbox = Turbine.UI.Lotro.TextBox();
	option_fervourBarHeight_textbox:SetParent(optionsPanel);
	option_fervourBarHeight_textbox:SetMultiline(false);
	option_fervourBarHeight_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_fervourBarHeight_textbox:SetText(options["fervourBarHeight"]);
	option_fervourBarHeight_textbox:SetSize(100, 20);
	option_fervourBarHeight_textbox:SetPosition(80, 220);
	option_fervourBarHeight_textbox:SetZOrder(100);
	option_fervourBarHeight_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_fervourBarHeight_textbox:SetText(option_fervourBarHeight_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- FervourBarGap --
	option_fervourBarGap_label = Turbine.UI.Label();
	option_fervourBarGap_label:SetParent(optionsPanel);
	option_fervourBarGap_label:SetSize(300, 30);
	option_fervourBarGap_label:SetPosition(80, 250);
	option_fervourBarGap_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_fervourBarGap_label:SetText("Bar Gap");
	option_fervourBarGap_label:SetForeColor(Turbine.UI.Color.White);
	option_fervourBarGap_textbox = Turbine.UI.Lotro.TextBox();
	option_fervourBarGap_textbox:SetParent(optionsPanel);
	option_fervourBarGap_textbox:SetMultiline(false);
	option_fervourBarGap_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_fervourBarGap_textbox:SetText(options["fervourBarGap"]);
	option_fervourBarGap_textbox:SetSize(100, 20);
	option_fervourBarGap_textbox:SetPosition(80, 270);
	option_fervourBarGap_textbox:SetZOrder(100);
	option_fervourBarGap_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_fervourBarGap_textbox:SetText(option_fervourBarGap_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- Color customization --
	customizationTitle = Turbine.UI.Label();
	customizationTitle:SetParent(optionsPanel);
	customizationTitle:SetText("Color Customization");
	customizationTitle:SetSize(400, 30);
	customizationTitle:SetPosition(0, 320);
	customizationTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	customizationTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	customizationTitle:SetForeColor(Turbine.UI.Color.Yellow);
	customizationTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	customizationTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	customizationTitle:SetBackground(Turbine.UI.Graphic("ChampionFervour/Images/optionsTitleBackground.tga"));

	color_customization1 = createCustomizationOption(optionsPanel, 80, 380, "pip 1 color", "pip_1_color");
	color_customization2 = createCustomizationOption(optionsPanel, 80, 440, "pip 2 color", "pip_2_color");
	color_customization3 = createCustomizationOption(optionsPanel, 80, 500, "pip 3 color", "pip_3_color");
	color_customization4 = createCustomizationOption(optionsPanel, 80, 560, "pip 4 color", "pip_4_color");
	color_customization5 = createCustomizationOption(optionsPanel, 80, 620, "pip 5 color", "pip_5_color");


	-- Troubleshooting title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Troubleshooting");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(300, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("ChampionFervour/Images/optionsTitleBackground.tga"));


	-- Reset position button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset Position");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 80);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		FervourWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		notification("Position has been resetted.");
	end


	-- Reset settings button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset All Settings");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 120);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		options["enableMovement"] = defaultOptions["enableMovement"];
		options["displayNumber"] = defaultOptions["displayNumber"];
		options["fervourBarLenght"] = defaultOptions["fervourBarLenght"];
		options["fervourBarHeight"] = defaultOptions["fervourBarHeight"];
		options["fervourBarGap"] = defaultOptions["fervourBarGap"];
		options["hideOutOfCombat"] = defaultOptions["hideOutOfCombat"];

		FervourWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		option_allowMovement_checkbox:SetChecked(defaultOptions["enableMovement"])
		FervourWindowClass.moveControl:SetMouseVisible(defaultOptions["enableMovement"])
		option_hideOutOfCombat_checkbox:SetChecked(defaultOptions["hideOutOfCombat"]);
		FervourWindowClass:SetOpacity(1)
		FervourWindowClass:SetWantsUpdates(defaultOptions["hideOutOfCombat"])
		option_displayNumber_checkbox:SetChecked(defaultOptions["displayNumber"]);
		FervourWindowClass.Fervour_label:SetVisible(defaultOptions["displayNumber"])
		option_fervourBarLenght_textbox:SetText(defaultOptions["fervourBarLenght"])
		option_fervourBarHeight_textbox:SetText(defaultOptions["fervourBarHeight"])
		option_fervourBarGap_textbox:SetText(defaultOptions["fervourBarGap"])

		FervourWindowClass:UpdateElements();
		notification("All Settings has been resetted.");
	end


	-- Apply options button --
	apllyButton = Turbine.UI.Lotro.Button();
	apllyButton:SetText("Apply");
	apllyButton:SetParent(optionsPanel);
	apllyButton:SetSize(150, 20);
	apllyButton:SetPosition(80, 730);
	apllyButton:SetZOrder(100);
	apllyButton.Click = function( sender, args)

		options["enableMovement"] = option_allowMovement_checkbox:IsChecked();
		FervourWindowClass.moveControl:SetMouseVisible(options["enableMovement"])

		options["displayNumber"] = option_displayNumber_checkbox:IsChecked();
		FervourWindowClass.Fervour_label:SetVisible(options["displayNumber"])

		options["hideOutOfCombat"] = option_hideOutOfCombat_checkbox:IsChecked();
		if (options["hideOutOfCombat"]) then
			FervourWindowClass.localPlayer.InCombatChanged();
		else
			FervourWindowClass:SetWantsUpdates(false)
			FervourWindowClass:SetOpacity(1)
		end


		if (option_fervourBarLenght_textbox:GetText() == "") then
			option_fervourBarLenght_textbox:SetText("0")
		end

		if (option_fervourBarHeight_textbox:GetText() == "") then
			option_fervourBarHeight_textbox:SetText("0")
		end

		if (option_fervourBarGap_textbox:GetText() == "") then
			option_fervourBarGap_textbox:SetText("0")
		end

		options["fervourBarLenght"] = option_fervourBarLenght_textbox:GetText();
		options["fervourBarHeight"] = option_fervourBarHeight_textbox:GetText();
		options["fervourBarGap"] = option_fervourBarGap_textbox:GetText();

		options["pip_1_color"] = color_customization1["colorReview"]:GetBackColor();
		options["pip_2_color"] = color_customization2["colorReview"]:GetBackColor();
		options["pip_3_color"] = color_customization3["colorReview"]:GetBackColor();
		options["pip_4_color"] = color_customization4["colorReview"]:GetBackColor();
		options["pip_5_color"] = color_customization5["colorReview"]:GetBackColor();

		FervourWindowClass:UpdateElements();
		notification("Options have been applied.");
	end


	-- Return View --
	return optionsPanel;
end





-- Build layout for customization options --
function createCustomizationOption(parent, xPos, yPos, text, keyValue)

	local label = Turbine.UI.Label();
	label:SetParent(parent);
	label:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
	label:SetText(text);
	label:SetSize(240, 30);
	label:SetPosition(xPos, yPos);


	local colorReview = Turbine.UI.Control()
	colorReview:SetParent(parent)
	colorReview:SetSize(80, 20)
    colorReview:SetPosition(xPos, yPos + 20)
	colorReview:SetBackColor(options[keyValue])
    colorReview:SetVisible(true)


	local editButton = Turbine.UI.Lotro.Button();
	editButton:SetText("Edit");
	editButton:SetParent(parent);
	editButton:SetSize(75, 30);
	editButton:SetPosition(xPos + 100, yPos + 20);
	editButton.Click = function( sender, args)
		if colorPicker ~= nil then
			colorPickerLastPositionX, colorPickerLastPositionY = colorPicker:GetPosition();
			colorPicker:Close();
		end

		colorPicker = ChampionFervour.Utility.ColorPicker(colorReview:GetBackColor(), "H");
		colorPicker:SetZOrder(9999);

		if (colorPickerLastPositionX ~= nil) then
			colorPicker:SetPosition(colorPickerLastPositionX, colorPickerLastPositionY);
		end

		colorPicker.ColorChanged = function(picker)
			colorReview:SetBackColor(picker:GetColor());
		end

		colorPicker.Accepted = function(picker)
			colorReview:SetBackColor(picker:GetColor());
			colorPicker:Close();
		end
	end


	local revertButton = Turbine.UI.Lotro.Button();
	revertButton:SetText("Revert");
	revertButton:SetParent(parent);
	revertButton:SetSize(75, 30);
	revertButton:SetPosition(xPos + 180, yPos + 20);
	revertButton.Click = function( sender, args)
		-- Revert color back to what it was when plugin was loaded --
		colorReview:SetBackColor(options[keyValue]);
	end


	local defaultButton = Turbine.UI.Lotro.Button();
	defaultButton:SetText("Default");
	defaultButton:SetParent(parent);
	defaultButton:SetSize(75, 30);
	defaultButton:SetPosition(xPos + 260, yPos + 20);
	defaultButton.Click = function( sender, args)
		-- Reset color to default settings --
		colorReview:SetBackColor(defaultOptions[keyValue]);
	end


	-- Return created objects --
	data = {}
	data["label"] = label;
	data["colorReview"] = colorReview;
	data["editButton"] = editButton;
	data["revertButton"] = revertButton;
	data["defaultButton"] = defaultButton;
	return data;
end