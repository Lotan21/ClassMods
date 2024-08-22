--
--	ClassMods Options - totem timers panel
--

local L = LibStub("AceLocale-3.0"):GetLocale("ClassMods")

function ClassMods.Options:CreateTotemTimers()
	local DB = _G.ClassMods.Options.DB

	local totemtable = {
		maintab = {
			order = 1,
			type = "group",
			name = L["Totem Timers"],
			args = {
				spacer1 = { order = 1, type = "description", name = " ", desc = "", width = "full"},
				enabled = {
					type = "toggle",
					order = 2,
					name = L["Totem Timers"],
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) ClassMods.Options:CollapseAll(); DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				updateinterval = {
					type = "range",
					order = 4,
					name = L["Set update interval"],
					disabled = function(info) return (not DB.totemtimers["enabled"] or DB.overrideinterval) end,
					isPercent = false,
					min = 0.01, max = 1, step = 0.01,
					get = function(info) return(DB.totemtimers[info[#info] ]) end,
					set = function(info, size) DB.totemtimers[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				iconsize = {
					type = "range",
					order = 6,
					name = L["Icon size"],
					min = 10, max = 100, step = 1,
					disabled = function(info) return (not DB.totemtimers.enabled) end,
					get = function(info) return (DB.totemtimers[info[#info] ]) end,
					set = function(info, size) DB.totemtimers[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				spacer7 = {  order = 7, type = "header", name = L["Enable which spells to track"] },
			},
		},
		backdrop = {
			type = "group",
			order = 30,
			name = L["Backdrop"],
			disabled = function(info) return (not DB.totemtimers.enabled) end,
			args = {
				enablebackdrop = {
					type = "toggle",
					order = 1,
					name = L["Enable"],
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				backdroptexture = {
					type = "select",
					width = "double",
					dialogControl = 'LSM30_Background',
					order = 2,
					name = L["Backdrop texture"],
					values = AceGUIWidgetLSMlists.background,
					disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				colorbackdrop = {
					type = "toggle",
					order = 3,
					name = L["Color the backdrop"],
					disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				backdropcolor = {
					type = "color",
					order = 4,
					name = L["Backdrop color"],
					hasAlpha = true,
					disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
					hidden = function(info) return not DB.totemtimers.colorbackdrop end,
					get = function(info) return unpack(DB.totemtimers[info[#info] ]) end,
					set = function(info, r, g, b, a) DB.totemtimers[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.totemtimers.colorbackdrop end },
				tile = {
					type = "toggle",
					order = 15,
					name = L["Tile the backdrop"],
					disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				tilesize = {
					type = "range",
					order = 16,
					name = L["Tile size"],
					min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
					disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
					hidden = function(info) return not DB.totemtimers.tile end,
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full"},
				backdropoffsets = {
					type = "group",
					order = 28,
					name = L["Offsets"],
					guiInline = true,
					args = {
						offsetX1 = {
							type = "range",
							order = 1,
							name = L["Top-left X"],
							min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][1]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
						offsetY1 = {
							type = "range",
							order = 2,
							name = L["Top-left Y"],
							min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][2]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
						spacer10 = { order = 10, type = "description", name = " ", desc = "", width = "half" },
						offsetX2 = {
							type = "range",
							order = 13,
							name = L["Bottom-right X"],
							min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][3]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
						offsetY2 = {
							type = "range",
							order = 14,
							name = L["Bottom-right Y"],
							min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enablebackdrop"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][4]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
					},
				},
				spacer32 = { order = 32, type = "description", name = " ", desc = "", width = "full"},
			},
		},
		border = {
			type = "group",
			order = 34,
			name = L["Border"],
			disabled = function(info) return (not DB.totemtimers.enabled) end,
			args = {
				enableborder = {
					type = "toggle",
					order = 1,
					name = L["Enable"],
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				bordertexture = {
					type = "select",
					width = "double",
					dialogControl = 'LSM30_Border',
					order = 2,
					name = L["Border texture"],
					values = AceGUIWidgetLSMlists.border,
					disabled = function(info) return not DB.totemtimers["enableborder"] end,
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				bordercolor = {
					type = "color",
					order = 3,
					name = L["Border color"],
					hasAlpha = true,
					disabled = function(info) return not DB.totemtimers["enableborder"] end,
					get = function(info) return unpack(DB.totemtimers[info[#info] ]) end,
					set = function(info, r, g, b, a) DB.totemtimers[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				edgesize = {
					type = "range",
					order = 4,
					name = L["Edge size"],
					min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
					disabled = function(info) return not DB.totemtimers["enableborder"] end,
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				spacer1 = { order = 7, type = "description", name = " ", desc = "", width = "full"},
				backdropinsets = {
					type = "group",
					order = 10,
					name = L["Insets"],
					guiInline = true,
					args = {
						left = {
							type = "range",
							order = 1,
							name = L["Left"],
							min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enableborder"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][1]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
						right = {
							type = "range",
							order = 2,
							name = L["Right"],
							min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enableborder"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][2]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
						spacer10 = { order = 10, type = "description", name = " ", desc = "", width = "half" },
						top = {
							type = "range",
							order = 13,
							name = L["Top"],
							min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enableborder"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][3]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
						bottom = {
							type = "range",
							order = 14,
							name = L["Bottom"],
							min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
							disabled = function(info) return not DB.totemtimers["enableborder"] end,
							get = function(info) return (DB.totemtimers[info[#info-1] ][4]) end,
							set = function(info, offset) DB.totemtimers[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
						},
					},
				},
			},
		},
		texcoords = {
			type = "group",
			order = 36,
			name = L["Texture coords"],
			disabled = function(info) return (not DB.totemtimers.enabled) end,
			args = {
				spacer1 = { order = 1, type = "description", name = " ", desc = "", width = "full" },
				enabletexcoords = {
					type = "toggle",
					order = 4,
					name = L["Enable"],
					get = function(info) return DB.totemtimers[info[#info] ] end,
					set = function(info, value) DB.totemtimers[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				spacer8 = { order = 8, type = "description", name = " ", desc = "", width = "full" },
				left = {
					type = "range",
					order = 11,
					name = L["Left"],
					min = 0, max = 1, step = .01,
					disabled = function(info) return not DB.totemtimers["enabletexcoords"] end,
					get = function(info) return (DB.totemtimers[info[#info-1] ][1]) end,
					set = function(info, offset) DB.totemtimers[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				right = {
					type = "range",
					order = 12,
					name = L["Right"],
					min = 0, max = 1, step = .01,
					disabled = function(info) return not DB.totemtimers["enabletexcoords"] end,
					get = function(info) return (DB.totemtimers[info[#info-1] ][2]) end,
					set = function(info, offset) DB.totemtimers[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				spacer20 = { order = 20, type = "description", name = " ", desc = "", width = "half" },
				top = {
					type = "range",
					order = 22,
					name = L["Top"],
					min = 0, max = 1, step = .01,
					disabled = function(info) return not DB.totemtimers["enabletexcoords"] end,
					get = function(info) return (DB.totemtimers[info[#info-1] ][3]) end,
					set = function(info, offset) DB.totemtimers[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
				bottom = {
					type = "range",
					order = 24,
					name = L["Bottom"],
					min = 0, max = 1, step = .01,
					disabled = function(info) return not DB.totemtimers["enabletexcoords"] end,
					get = function(info) return (DB.totemtimers[info[#info-1] ][4]) end,
					set = function(info, offset) DB.totemtimers[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
				},
			},
		},
	}

	for i=1,#DB.totemtimers.totems do
		totemtable.maintab.args["spell" .. i] = {
			type = "toggle",
			order = 8 + i,
			name = C_Spell.GetSpellName(tonumber(DB.totemtimers.totems[i][2])),
			width = "double",
			hidden = function(info) return (not DB.totemtimers.enabled) end,
			get = function(info) return DB.totemtimers.totems[i][1] end,
			set = function(info, value) ClassMods.Options:CollapseAll(); DB.totemtimers.totems[i][1] = value;ClassMods.Options:LockDown(ClassMods.SetupTotemTimers) end,
		}
	end

	return totemtable
end