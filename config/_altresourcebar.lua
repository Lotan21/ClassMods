﻿--
--	ClassMods Options - alternate resource bar panel
--

local L = LibStub("AceLocale-3.0"):GetLocale("ClassMods")

function ClassMods.Options:Panel_AltResourceBar(ord)
	if (not ClassMods.alternateResource) then return end
	local DB = _G.ClassMods.Options.DB
	local hidebasicmode = false
	if (select(2, UnitClass("player")) == "MONK") and (GetSpecialization() == 1) then hidebasicmode = true end -- Brewmaster
	return {
		order = ord,
		type = "group",
		name = L["Alternate Resource Bar"],
		childGroups = "tab",
		args = {
			maintab = {
				order = 1,
				type = "group",
				name = L["Alternate Resource Bar"],
				args = {
					enabled = {
						type = "toggle",
						order = 2,
						name = L["Enable"],
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) ClassMods.Options:CollapseAll(); DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					updateinterval = {
						type = "range",
						order = 4,
						name = L["Set update interval"],
						disabled = function(info) return (not DB.altresourcebar["enabled"] or DB.overrideinterval) end,
						isPercent = false,
						min = 0.01, max = 1, step = 0.01,
						get = function(info) return(DB.altresourcebar[info[#info] ]) end,
						set = function(info, size) DB.altresourcebar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					iconsize = {
						type = "range",
						order = 6,
						name = L["Icon size"],
						min = 10, max = 100, step = 1,
						hidden = function(info) return(DB.altresourcebar.basicmode) end,
						disabled = function(info) return (not DB.altresourcebar.enabled) end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, size) DB.altresourcebar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer7 = { order = 7, type = "description", name = " ", desc = ""},
					basicmode = {
						type = "toggle",
						order = 8,
						name = L["Basic mode"],
						desc = L["ALTRESOURCEBASIC_DESC"],
						hidden = hidebasicmode,
						disabled = function(info) return (not DB.altresourcebar.enabled) end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) ClassMods.Options:CollapseAll(); DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer9 = { order = 9, type = "description", name = " ", desc = "", width = "double"},
					barcoloron = {
						type = "color",
						order = 10,
						name = L["Color on"],
						desc = L["ALTRESOURCECOLORON_DESC"],
						hasAlpha = true,
						hidden = function(info) return(not DB.altresourcebar.basicmode) or hidebasicmode end,
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return unpack(DB.altresourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.altresourcebar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					barcoloroff = {
						type = "color",
						order = 12,
						name = L["Color off"],
						desc = L["ALTRESOURCECOLOROOFF_DESC"],
						hasAlpha = true,
						hidden = function(info) return(not DB.altresourcebar.basicmode) or hidebasicmode end,
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return unpack(DB.altresourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.altresourcebar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer13 = { order = 13, type = "description", name = " ", desc = "" },
					width = {
						type = "range",
						order = 14,
						name = L["Width"],
						min = 6, softMax = 300, max = 500, step = 1,
						hidden = function(info) return(not DB.altresourcebar.basicmode) end,
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, size) DB.altresourcebar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					height = {
						type = "range",
						order = 16,
						name = L["Height"],
						min = 6, softMax = 300, max = 500, step = 1,
						hidden = function(info) return(not DB.altresourcebar.basicmode) end,
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, size) DB.altresourcebar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
				},
			},
			alphastuff = {
				order = 6,
				type = "group",
				name = L["Bar alpha"],
				disabled = function(info) return not DB.altresourcebar["enabled"] end,
				args = {
					activealpha = {
						type = "range",
						order = 24,
						name = L["Active alpha"],
						desc = L["RESOURCEBARACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					inactivealpha = {
						type = "range",
						order = 26,
						name = L["Inactive alpha"],
						desc = L["RESOURCEBARINACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full"},
					oocoverride = {
						type = "toggle",
						order = 28,
						name = L["OOC override"],
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					mountoverride = {
						type = "toggle",
						order = 32,
						name = L["Mounted override"],
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					deadoverride = {
						type = "toggle",
						order = 34,
						name = L["Dead override"],
						disabled = function(info) return not DB.altresourcebar["enabled"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer36 = { order = 36, type = "description", name = " ", desc = "", width = "full"},
					oocoverridealpha = {
						type = "range",
						order = 38,
						name = L["OOC alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.altresourcebar["oocoverride"] then return true end
							if not DB.altresourcebar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					mountoverridealpha = {
						type = "range",
						order = 40,
						name = L["Mounted alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.altresourcebar["mountoverride"] then return true end
							if not DB.altresourcebar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					deadoverridealpha = {
						type = "range",
						order = 42,
						name = L["Dead alpha"],
						desc = L["RESOURCEBARDEADALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.altresourcebar["deadoverride"] then return true end
							if not DB.altresourcebar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.altresourcebar[info[#info] ]) end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
				},
			},
			backdrop = {
				type = "group",
				order = 22,
				name = L["Backdrop"],
				disabled = function(info) return not DB.altresourcebar["enabled"] end,
				args = {
					enablebackdrop = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					backdroptexture = {
						type = "select",
						width = "double",
						dialogControl = 'LSM30_Background',
						order = 2,
						name = L["Backdrop texture"],
						values = AceGUIWidgetLSMlists.background,
						disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					colorbackdrop = {
						type = "toggle",
						order = 3,
						name = L["Color the backdrop"],
						disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					backdropcolor = {
						type = "color",
						order = 5,
						name = L["Backdrop color"],
						hasAlpha = true,
						disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
						hidden = function(info) return not DB.altresourcebar.colorbackdrop end,
						get = function(info) return unpack(DB.altresourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.altresourcebar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.altresourcebar.colorbackdrop end },
					tile = {
						type = "toggle",
						order = 7,
						name = L["Tile the backdrop"],
						disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					tilesize = {
						type = "range",
						order = 8,
						name = L["Tile size"],
						min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
						disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
						hidden = function(info) return not DB.altresourcebar.tile end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer = { order = 11, type = "description", name = "", desc = "", width = "full"},
					backdropoffsets = {
						type = "group",
						order = 14,
						name = L["Offsets"],
						guiInline = true,
						args = {
							offsetX1 = {
								type = "range",
								order = 1,
								name = L["Top-left X"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							offsetY1 = {
								type = "range",
								order = 2,
								name = L["Top-left Y"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
							offsetX2 = {
								type = "range",
								order = 8,
								name = L["Bottom-right X"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							offsetY2 = {
								type = "range",
								order = 10,
								name = L["Bottom-right Y"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enablebackdrop"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
						},
					},
					spacer = { order = 16, type = "description", name = "", desc = "", width = "full"},
				},
			},
			border = {
				type = "group",
				order = 24,
				name = L["Border"],
				disabled = function(info) return not DB.altresourcebar["enabled"] end,
				args = {
					enableborder = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					bordertexture = {
						type = "select",
						width = "double",
						dialogControl = 'LSM30_Border',
						order = 2,
						name = L["Border texture"],
						values = AceGUIWidgetLSMlists.border,
						disabled = function(info) return not DB.altresourcebar["enableborder"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					bordercolor = {
						type = "color",
						order = 3,
						name = L["Border color"],
						hasAlpha = true,
						disabled = function(info) return not DB.altresourcebar["enableborder"] end,
						get = function(info) return unpack(DB.altresourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.altresourcebar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					edgesize = {
						type = "range",
						order = 4,
						name = L["Edge size"],
						min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
						disabled = function(info) return not DB.altresourcebar["enableborder"] end,
						get = function(info) return DB.altresourcebar[info[#info] ] end,
						set = function(info, value) DB.altresourcebar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
					},
					spacer = { order = 7, type = "description", name = "", desc = "", width = "full"},
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
								disabled = function(info) return not DB.altresourcebar["enableborder"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							right = {
								type = "range",
								order = 2,
								name = L["Right"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enableborder"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							spacer3 = { order = 3, type = "description", name = "", desc = "", width = "half"},
							top = {
								type = "range",
								order = 4,
								name = L["Top"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enableborder"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							bottom = {
								type = "range",
								order = 5,
								name = L["Bottom"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.altresourcebar["enableborder"] end,
								get = function(info) return (DB.altresourcebar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.altresourcebar[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
						},
					},
				},
			},
			icon = {
				order = 26,
				type = "group",
				name = L["Icons"],
				childGroups = "tab",
				hidden = hidebasicmode,
				args = {
					backdrop = {
						type = "group",
						order = 32,
						name = L["Backdrop"],
						args = {
							spacer1 = { order = 1, type = "description", name = " ", desc = "", width = "full"},
							enablebackdrop = {
								type = "toggle",
								order = 1,
								name = L["Enable"],
								get = function(info) return DB.altresourcebar.icon[info[#info] ]  end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ]  = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							backdroptexture = {
								type = "select",
								dialogControl = 'LSM30_Background',
								order = 2,
								name = L["Backdrop texture"],
								width = "double",
								values = AceGUIWidgetLSMlists.background,
								disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
								get = function(info) return DB.altresourcebar.icon[info[#info] ]  end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ]  = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							colorbackdrop = {
								type = "toggle",
								order = 3,
								name = L["Color the backdrop"],
								disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
								get = function(info) return DB.altresourcebar.icon[info[#info] ] end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							backdropcolor = {
								type = "color",
								order = 4,
								name = L["Backdrop color"],
								width = "double",
								hasAlpha = true,
								disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
								hidden = function(info) return not DB.altresourcebar.icon.colorbackdrop end,
								get = function(info) return unpack(DB.altresourcebar.icon[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.altresourcebar.icon[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							tile = {
								type = "toggle",
								order = 5,
								name = L["Tile the backdrop"],
								disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
								get = function(info) return DB.altresourcebar.icon[info[#info] ] end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							tilesize = {
								type = "range",
								order = 6,
								name = L["Tile size"],
								min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
								disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
								hidden = function(info) return not DB.altresourcebar.icon.tile end,
								get = function(info) return DB.altresourcebar.icon[info[#info] ] end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							spacer7 = { order = 7, type = "description", name = "", desc = "", width = "full"},
							backdropoffsets = {
								type = "group",
								order = 8,
								name = L["Offsets"],
								guiInline = true,
								args = {
									offsetX1 = {
										type = "range",
										order = 2,
										name = L["Top-left X"],
										min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][1]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
									offsetY1 = {
										type = "range",
										order = 4,
										name = L["Top-left Y"],
										min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][2]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
									spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
									offsetX2 = {
										type = "range",
										order = 8,
										name = L["Bottom-right X"],
										min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][3]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
									offsetY2 = {
										type = "range",
										order = 10,
										name = L["Bottom-right Y"],
										min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enablebackdrop"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][4]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
								},
							},
						},
					},
					border = {
						type = "group",
						order = 34,
						name = L["Border"],
						args = {
							spacer1 = { order = 1, type = "description", name = " ", desc = "", width = "full"},
							enableborder = {
								type = "toggle",
								order = 6,
								name = L["Enable"],
								get = function(info) return DB.altresourcebar.icon[info[#info] ] end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							bordercolor = {
								type = "color",
								order = 8,
								name = L["Border color"],
								hasAlpha = true,
								disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
								get = function(info) return unpack(DB.altresourcebar.icon[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.altresourcebar.icon[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							bordertexture = {
								type = "select",
								dialogControl = 'LSM30_Border',
								order = 10,
								name = L["Border texture"],
								width = "double",
								values = AceGUIWidgetLSMlists.border,
								disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
								get = function(info) return DB.altresourcebar.icon[info[#info] ] end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							edgesize = {
								type = "range",
								order = 14,
								name = L["Edge size"],
								min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
								disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
								get = function(info) return DB.altresourcebar.icon[info[#info] ] end,
								set = function(info, value) DB.altresourcebar.icon[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
							},
							spacer16 = { order = 16, type = "description", name = "", desc = "", width = "full"},
							backdropinsets = {
								type = "group",
								order = 20,
								name = L["Insets"],
								guiInline = true,
								args = {
									left = {
										type = "range",
										order = 2,
										name = L["Left"],
										min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][1]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
									right = {
										type = "range",
										order = 4,
										name = L["Right"],
										min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][2]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
									spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
									top = {
										type = "range",
										order = 8,
										name = L["Top"],
										min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][3]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
									bottom = {
										type = "range",
										order = 10,
										name = L["Bottom"],
										min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
										disabled = function(info) return not DB.altresourcebar.icon["enableborder"] end,
										get = function(info) return (DB.altresourcebar.icon[info[#info-1] ][4]) end,
										set = function(info, offset) DB.altresourcebar.icon[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupAltResourceBar) end,
									},
								},
							},
						},
					},
				},
			},
		},
	}
end
