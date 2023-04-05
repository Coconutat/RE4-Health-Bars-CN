local this = {};

local utils;
local singletons;
local config;
local customization_menu;
local enemy_handler;
local time;

local sdk = sdk;
local tostring = tostring;
local pairs = pairs;
local ipairs = ipairs;
local tonumber = tonumber;
local require = require;
local pcall = pcall;
local table = table;
local string = string;
local Vector3f = Vector3f;
local d2d = d2d;
local math = math;
local json = json;
local log = log;
local fs = fs;
local next = next;
local type = type;
local setmetatable = setmetatable;
local getmetatable = getmetatable;
local assert = assert;
local select = select;
local coroutine = coroutine;
local utf8 = utf8;
local re = re;
local imgui = imgui;
local draw = draw;
local Vector2f = Vector2f;
local reframework = reframework;
local os = os;

this.game = {};
this.game.is_cutscene_playing = false;
this.game.is_hud_off = false;
this.game.current_active_input_level = 0;


local gui_manager_type_def = sdk.find_type_definition("chainsaw.GuiManager");
local get_is_playing_event_method = gui_manager_type_def:get_method("get_IsPlayingEvent");
local get_is_hud_off_method = gui_manager_type_def:get_method("get_IsHudOff");
local get_gui_open_close_data_method = gui_manager_type_def:get_method("get_GuiOpenCloseData");

local gui_open_close_data_type_def = get_gui_open_close_data_method:get_return_type();
local get_curr_active_input_level_method = gui_open_close_data_type_def:get_method("get_CurrActiveInputevel");

function this.update_is_cutscene(gui_manager)
	if gui_manager == nil then
		customization_menu.status = "No GUI Manager";
        return;
    end

	local is_playing_event = get_is_playing_event_method:call(gui_manager);
	
	if is_playing_event == nil then
		customization_menu.status = "No IsPlayingEvent";
        return;
	end

	this.game.is_cutscene_playing = is_playing_event;
end

function this.update_is_hud_off(gui_manager)
	if gui_manager == nil then
		customization_menu.status = "No GUI Manager";
        return;
    end

	local is_hud_off = get_is_hud_off_method:call(gui_manager);
	
	if is_hud_off == nil then
		customization_menu.status = "No IsHudOff";
        return;
	end

	this.game.is_hud_off = is_hud_off;
end

function this.update_current_input_level(gui_manager)
	if gui_manager == nil then
		customization_menu.status = "No GUI Manager";
        return;
    end

	local gui_open_close_data = get_gui_open_close_data_method:call(gui_manager);
	
	if gui_open_close_data == nil then
		customization_menu.status = "No GUI Open-Close Data";
        return;
	end

	local current_active_input_level = get_curr_active_input_level_method:call(gui_open_close_data);
	
	if current_active_input_level == nil then
		customization_menu.status = "No GUI Current Active Input Level";
        return;
	end

	this.game.current_active_input_level = current_active_input_level;
end

function this.update()
    if singletons.gui_manager == nil then
		customization_menu.status = "No GUI Manager";
        return;
    end

	this.update_is_cutscene(singletons.gui_manager);
	this.update_is_hud_off(singletons.gui_manager);
	this.update_current_input_level(singletons.gui_manager);
end

function this.init_module()
	utils = require("Health_Bars.utils");
	config = require("Health_Bars.config");
	singletons = require("Health_Bars.singletons");
	customization_menu = require("Health_Bars.customization_menu");
	enemy_handler = require("Health_Bars.enemy_handler");
	time = require("Health_Bars.time");
end

return this;