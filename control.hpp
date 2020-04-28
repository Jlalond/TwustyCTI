class vehicleDialog
{
	idd=100;
	class controls
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Twusty, v1.063, #Zocobo)
		////////////////////////////////////////////////////////

		class VehiclePurchaseFrame: RscFrame
		{
			idc = 1800;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.3 * safezoneW;
			h = 0.528 * safezoneH;
		};
		class VehiclePurchaseClassNameListBox: RscListbox
		{
			idc = 100;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.363 * safezoneH;
		};
		class VehiclePurchasePriceListBox: RscListbox
		{
			idc = 101;
			x = 0.46875 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.1125 * safezoneW;
			h = 0.363 * safezoneH;
		};
		class VehiclePurchaseBuyButton: RscButton
		{
			idc = 1600;
			text = "BUY"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.128906 * safezoneW;
			h = 0.132 * safezoneH;
			action = "[[100, 100] call GetCurrentSelectedObject] call SpawnPurchasedVehicle; closeDialog 0;"
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};


class commanderDialog 
{
	idd = -1;
	class controls 
	{
		idd = -1;
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Twusty, v1.063, #Sixavy)
		////////////////////////////////////////////////////////

		class baseCommanderFrame: RscFrame
		{
			idc = 1800;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.402187 * safezoneW;
			h = 0.528 * safezoneH;
		};
		class barracksButton: RscButton
		{
			idc = 1600;
			text = "Barracks"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.099 * safezoneH;
			action = "[([""Barracks""] call GetBuildingType), 1000, ""Barracks""] spawn PrePlace; closeDialog 0;";
		};
		class lightVehicleButton: RscButton
		{
			idc = 1601;
			text = "Light Vehicle Factory"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.099 * safezoneH;
			action = "[([""Light Vehicle Factory""] call GetBuildingType), 5000, ""Light Vehicle Factory""] spawn PrePlace; closeDialog 0;";
		};
		class heavyVehicleButton: RscButton
		{
			idc = 1602;
			text = "Heavy Vehicle Factory"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.099 * safezoneH;
			action = "[([""Heavy Vehicle Factory""] call GetBuildingType), 10000, ""Heavy Vehicle Factory""] spawn PrePlace; closeDialog 0;";
		};
		class aircraftFactoryButton: RscButton
		{
			idc = 1603;
			text = "Aircraft Factory"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.11 * safezoneH;
			action = "[([""Aircraft Factory""] call GetBuildingType), 10000, ""Aircraft Factory""] spawn PrePlace; closeDialog 0;";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

	};
};

class RscTitles {

	class Default {
       idd = -1;
       fadein = 0;
       fadeout = 0;
       duration = 0;
	};
    class H8erHUD {
        idd = 745;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration     =  10e10;
        fadein       =  0;
        fadeout      =  0;
        name = "H8erHUD";
		onLoad = "with uiNameSpace do { H8erHUD = _this select 0 }";
		class controls {
		    class structuredText {
                access = 0;
                type = 13;
                idc = 1001;
                style = 0x00;
                lineSpacing = 1;
				x = 0.103165 * safezoneW + safezoneX;
				y = 0.007996 * safezoneH + safezoneY;//0.757996
				w = 0.778208 * safezoneW;
				h = 0.0660106 * safezoneH;
                size = 0.08;//0.020
                colorBackground[] = {0,0,0,0};
                colorText[] = {0.34,0.33,0.33,0};//{1,1,1,1}
                text = "";
                font = "PuristaSemiBold";
				class Attributes {
					font = "PuristaSemiBold";
					color = "#C1C0BB";//"#FFFFFF";
					align = "RIGHT";
					valign = "top";
					shadow = true;
					shadowColor = "#000000";
					underline = false;
					size = "2";//4
				};
            };
		};
	};
};