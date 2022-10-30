FervourWindow = class(Turbine.UI.Window)

function FervourWindow:Constructor()
	Turbine.UI.Window.Constructor(self)

	self:SetSize(options["fervourBarLenght"] * 5 + options["fervourBarGap"] * 4, options["fervourBarHeight"] + 20)
	self:SetPosition(options["xPos"], options["yPos"])
    self:SetWantsKeyEvents(true);
    self:SetVisible(true)
    if (options["hideOutOfCombat"]) then
        self:SetOpacity(0)
    else
        self:SetOpacity(1)
    end


    -- Hide the UI with F12 --
    self.KeyDown = function( sender, args)
        if (args.Action == 268435635) then
            self:SetVisible(not self:IsVisible());
        end
    end


    -- Label which displayes current fervour as a number --
    self.Fervour_label = Turbine.UI.Label()
	self.Fervour_label:SetParent(self)
    self.Fervour_label:SetSize(options["fervourBarHeight"] + 20, options["fervourBarHeight"] + 20)
	self.Fervour_label:SetPosition((self:GetWidth() / 2) - (self.Fervour_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Fervour_label:GetHeight() / 2))
    self.Fervour_label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter)
    self.Fervour_label:SetVisible(options["displayNumber"])
	self.Fervour_label:SetFont(Turbine.UI.Lotro.Font.TrajanProBold30)
    self.Fervour_label:SetText("0")
    self.Fervour_label:SetZOrder(2)
    self.Fervour_label:SetForeColor(Turbine.UI.Color.White)
    self.Fervour_label:SetOutlineColor(Turbine.UI.Color.Black)
    self.Fervour_label:SetFontStyle(Turbine.UI.FontStyle.Outline);


    -- Fervour bar 1 --
	self.Fervour_1_parent = Turbine.UI.Control()
	self.Fervour_1_parent:SetParent(self)
	self.Fervour_1_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Fervour_1_parent:GetHeight() / 2))
	self.Fervour_1_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_1_parent:SetVisible(true)
    self.Fervour_1_child = Turbine.UI.Control()
	self.Fervour_1_child:SetParent(self.Fervour_1_parent)
	self.Fervour_1_child:SetPosition(1, 1)
	self.Fervour_1_child:SetSize(self.Fervour_1_parent:GetWidth() - 2, self.Fervour_1_parent:GetHeight() - 2)
	self.Fervour_1_child:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_1_child:SetVisible(true)


    -- Fervour bar 2 --
    self.Fervour_2_parent = Turbine.UI.Control()
	self.Fervour_2_parent:SetParent(self)
	self.Fervour_2_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_2_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]), (self:GetHeight() / 2) - (self.Fervour_2_parent:GetHeight() / 2))
	self.Fervour_2_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_2_parent:SetVisible(true)
    self.Fervour_2_child = Turbine.UI.Control()
	self.Fervour_2_child:SetParent(self.Fervour_2_parent)
	self.Fervour_2_child:SetPosition(1, 1)
	self.Fervour_2_child:SetSize(self.Fervour_2_parent:GetWidth() - 2, self.Fervour_2_parent:GetHeight() - 2)
	self.Fervour_2_child:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_2_child:SetVisible(true)


    -- Fervour bar 3 --
    self.Fervour_3_parent = Turbine.UI.Control()
	self.Fervour_3_parent:SetParent(self)
	self.Fervour_3_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_3_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]) * 2, (self:GetHeight() / 2) - (self.Fervour_3_parent:GetHeight() / 2))
	self.Fervour_3_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_3_parent:SetVisible(true)
    self.Fervour_3_child = Turbine.UI.Control()
	self.Fervour_3_child:SetParent(self.Fervour_3_parent)
	self.Fervour_3_child:SetPosition(1, 1)
	self.Fervour_3_child:SetSize(self.Fervour_3_parent:GetWidth() - 2, self.Fervour_3_parent:GetHeight() - 2)
	self.Fervour_3_child:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_3_child:SetVisible(true)


    -- Fervour bar 4 --
    self.Fervour_4_parent = Turbine.UI.Control()
	self.Fervour_4_parent:SetParent(self)
	self.Fervour_4_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_4_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]) * 3, (self:GetHeight() / 2) - (self.Fervour_4_parent:GetHeight() / 2))
	self.Fervour_4_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_4_parent:SetVisible(true)
    self.Fervour_4_child = Turbine.UI.Control()
	self.Fervour_4_child:SetParent(self.Fervour_4_parent)
	self.Fervour_4_child:SetPosition(1, 1)
	self.Fervour_4_child:SetSize(self.Fervour_4_parent:GetWidth() - 2, self.Fervour_4_parent:GetHeight() - 2)
	self.Fervour_4_child:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_4_child:SetVisible(true)


    -- Fervour bar 5 --
    self.Fervour_5_parent = Turbine.UI.Control()
	self.Fervour_5_parent:SetParent(self)
	self.Fervour_5_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_5_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]) * 4, (self:GetHeight() / 2) - (self.Fervour_5_parent:GetHeight() / 2))
	self.Fervour_5_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_5_parent:SetVisible(true)
    self.Fervour_5_child = Turbine.UI.Control()
	self.Fervour_5_child:SetParent(self.Fervour_5_parent)
	self.Fervour_5_child:SetPosition(1, 1)
	self.Fervour_5_child:SetSize(self.Fervour_5_parent:GetWidth() - 2, self.Fervour_5_parent:GetHeight() - 2)
	self.Fervour_5_child:SetBackColor(Turbine.UI.Color.Black)
    self.Fervour_5_child:SetVisible(true)



    self.localPlayer = Turbine.Gameplay.LocalPlayer.GetInstance();
    self.localPlayer.InCombatChanged = function(sender, args)
        if (options["hideOutOfCombat"]) then
            self:SetWantsUpdates(true);
        end
    end
    self.localPlayer.InCombatChanged();

    self.Update = function()
        if (self.localPlayer:IsInCombat()) then
            self:SetOpacity(self:GetOpacity() + 0.02);
            if (self:GetOpacity() >= 1.0) then
                self:SetWantsUpdates(false);
            end
        else
            self:SetOpacity(self:GetOpacity() - 0.02);
            if (self:GetOpacity() <= 0) then
                self:SetWantsUpdates(false);
            end
        end
    end



    self.champFervour = Turbine.Gameplay.LocalPlayer.GetInstance():GetClassAttributes();
    self.champFervour.FervorChanged = function(sender, args)

        local _current_fervour = self.champFervour:GetFervor();
        self.Fervour_label:SetText(_current_fervour)

        if (_current_fervour == 5) then
            self.Fervour_1_child:SetBackColor(options["pip_5_color"])
            self.Fervour_2_child:SetBackColor(options["pip_5_color"])
            self.Fervour_3_child:SetBackColor(options["pip_5_color"])
            self.Fervour_4_child:SetBackColor(options["pip_5_color"])
            self.Fervour_5_child:SetBackColor(options["pip_5_color"])
        elseif (_current_fervour == 4) then
            self.Fervour_1_child:SetBackColor(options["pip_4_color"])
            self.Fervour_2_child:SetBackColor(options["pip_4_color"])
            self.Fervour_3_child:SetBackColor(options["pip_4_color"])
            self.Fervour_4_child:SetBackColor(options["pip_4_color"])
            self.Fervour_5_child:SetBackColor(Turbine.UI.Color.Black)
        elseif (_current_fervour == 3) then
            self.Fervour_1_child:SetBackColor(options["pip_3_color"])
            self.Fervour_2_child:SetBackColor(options["pip_3_color"])
            self.Fervour_3_child:SetBackColor(options["pip_3_color"])
            self.Fervour_4_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_5_child:SetBackColor(Turbine.UI.Color.Black)
        elseif (_current_fervour == 2) then
            self.Fervour_1_child:SetBackColor(options["pip_2_color"])
            self.Fervour_2_child:SetBackColor(options["pip_2_color"])
            self.Fervour_3_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_4_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_5_child:SetBackColor(Turbine.UI.Color.Black)
        elseif (_current_fervour == 1) then
            self.Fervour_1_child:SetBackColor(options["pip_1_color"])
            self.Fervour_2_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_3_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_4_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_5_child:SetBackColor(Turbine.UI.Color.Black)
        else
            self.Fervour_1_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_2_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_3_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_4_child:SetBackColor(Turbine.UI.Color.Black)
            self.Fervour_5_child:SetBackColor(Turbine.UI.Color.Black)
        end

    end
    self.champFervour.FervorChanged();



    -- Window Movement handler --
	self.moveControl = Turbine.UI.Control()
	self.moveControl:SetParent(self)
	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
	self.moveControl:SetMouseVisible(options["enableMovement"])
    self.moveControl:SetZOrder(3)
	self.moveControl.MouseDown = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = true	
			self.dragStartX = args.X
			self.dragStartY = args.Y
		end
	end

	self.moveControl.MouseMove = function( sender, args )
		if self.dragging then
			local x,y = self:GetPosition()	
			x = x + ( args.X - self.dragStartX )
			y = y + ( args.Y - self.dragStartY )	
			self:SetPosition( x, y )	
		end
	end

	self.moveControl.MouseUp = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = false
            options["xPos"] = self:GetLeft()
			options["yPos"] = self:GetTop()
		end
	end
end


-- Update elements after options have been modified --
function FervourWindow:UpdateElements()

	self:SetSize(options["fervourBarLenght"] * 5 + options["fervourBarGap"] * 4, options["fervourBarHeight"] + 20)

    self.Fervour_label:SetSize(options["fervourBarHeight"] + 20, options["fervourBarHeight"] + 20)
	self.Fervour_label:SetPosition((self:GetWidth() / 2) - (self.Fervour_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Fervour_label:GetHeight() / 2))

	self.Fervour_1_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Fervour_1_parent:GetHeight() / 2))
	self.Fervour_1_child:SetSize(self.Fervour_1_parent:GetWidth() - 2, self.Fervour_1_parent:GetHeight() - 2)

	self.Fervour_2_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_2_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]), (self:GetHeight() / 2) - (self.Fervour_2_parent:GetHeight() / 2))
	self.Fervour_2_child:SetSize(self.Fervour_2_parent:GetWidth() - 2, self.Fervour_2_parent:GetHeight() - 2)

	self.Fervour_3_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_3_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]) * 2, (self:GetHeight() / 2) - (self.Fervour_3_parent:GetHeight() / 2))
	self.Fervour_3_child:SetSize(self.Fervour_3_parent:GetWidth() - 2, self.Fervour_3_parent:GetHeight() - 2)

	self.Fervour_4_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_4_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]) * 3, (self:GetHeight() / 2) - (self.Fervour_4_parent:GetHeight() / 2))
	self.Fervour_4_child:SetSize(self.Fervour_4_parent:GetWidth() - 2, self.Fervour_4_parent:GetHeight() - 2)

	self.Fervour_5_parent:SetSize(options["fervourBarLenght"], options["fervourBarHeight"])
    self.Fervour_5_parent:SetPosition((options["fervourBarLenght"] + options["fervourBarGap"]) * 4, (self:GetHeight() / 2) - (self.Fervour_5_parent:GetHeight() / 2))
	self.Fervour_5_child:SetSize(self.Fervour_5_parent:GetWidth() - 2, self.Fervour_5_parent:GetHeight() - 2)

    self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
end


FervourWindowClass = FervourWindow();