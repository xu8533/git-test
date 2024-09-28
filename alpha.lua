return {
	"goolord/alpha-nvim",
	config = function(_, opts)
		-- header
		local logo = {
			[[  ███        ███ ]],
			[[████       ████]],
			[[██████      █████]],
			[[███████     █████]],
			[[████████    █████]],
			[[█████ ████   █████]],
			[[█████  ████  █████]],
			[[█████   ████ █████]],
			[[█████    ████████]],
			[[█████     ███████]],
			[[█████      ██████]],
			[[████       ████]],
			[[ ███        ███  ]],
			[[                    ]],
			[[  N  E  O  V  I  M  ]],
		}
		opts.section.header.val = logo
		vim.api.nvim_set_hl(0, "AlphaNeovimLogoBlue", { fg = "#92B3F4" }) -- Indigo
		vim.api.nvim_set_hl(0, "AlphaNeovimLogoGreen", { fg = "#B3E1A1" }) -- Deep Purple

		opts.section.header.opts.hl = {
			{
				{ "AlphaNeovimLogoBlue",  0,  0 },
				{ "AlphaNeovimLogoGreen", 1,  23 },
				{ "AlphaNeovimLogoBlue",  24, 36 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  8 },
				{ "AlphaNeovimLogoGreen", 4,  30 },
				{ "AlphaNeovimLogoBlue",  27, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  8 },
				{ "AlphaNeovimLogoGreen", 7,  30 },
				{ "AlphaNeovimLogoBlue",  29, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 10, 39 },
				{ "AlphaNeovimLogoBlue",  31, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 13, 39 },
				{ "AlphaNeovimLogoBlue",  33, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 14, 39 },
				{ "AlphaNeovimLogoBlue",  35, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 16, 39 },
				{ "AlphaNeovimLogoBlue",  35, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 17, 39 },
				{ "AlphaNeovimLogoBlue",  35, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 18, 39 },
				{ "AlphaNeovimLogoBlue",  35, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 19, 39 },
				{ "AlphaNeovimLogoBlue",  37, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 20, 39 },
				{ "AlphaNeovimLogoBlue",  39, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  0,  13 },
				{ "AlphaNeovimLogoGreen", 21, 39 },
				{ "AlphaNeovimLogoBlue",  39, 50 },
			},
			{
				{ "AlphaNeovimLogoBlue",  1,  13 },
				{ "AlphaNeovimLogoGreen", 20, 38 },
				{ "AlphaNeovimLogoBlue",  37, 50 },
			},
			{},
			{ { "AlphaNeovimLogoGreen", 0, 9 }, { "AlphaNeovimLogoBlue", 9, 18 } },
		}
		-- button
		local dashboard = require("alpha.themes.dashboard")
		local get_icon = require("astroui").get_icon
		dashboard.section.buttons.val = {
			dashboard.button("LDR f f", get_icon("Search", 2, true) .. "查找文件  "),
			dashboard.button("LDR f o", get_icon("DefaultFile", 2, true) .. "最近使用  "),
			dashboard.button("LDR f '", get_icon("Bookmarks", 2, true) .. "书签  "),
			dashboard.button("LDR S l", get_icon("Refresh", 2, true) .. "上次会话  "),
		}
		-- footer
		local alpha = require("alpha")
		local greeting
		local current_hour = tonumber(os.date("%H"))
		if current_hour < 3 then
			greeting = {
				"🌙  丹霞夹明月，华星出云间",
				"🌙  上天垂光采，五色一何鲜",
			}
		elseif current_hour < 6 then
			greeting = {
				"🌄  东方欲晓，莫道君行早",
				"🌄  踏遍青山人未老，风景这边独好",
			}
		elseif current_hour < 8 then
			greeting = {
				"🌄  天地转，光阴迫",
				"🌄  一万年太久，只争朝夕",
			}
		elseif current_hour < 10 then
			greeting = {
				"🌄  才饮长沙水，又食武昌鱼，极目楚天舒",
				"🌄  不管风吹浪打，胜似闲庭信步",
			}
		elseif current_hour < 12 then
			greeting = {
				"🌄  烟雨莽苍苍，龟蛇锁大江",
				"🌄  把酒酹滔滔，心潮逐浪高",
			}
		elseif current_hour < 18 then
			greeting = {
				"☕  莫听穿林打叶声。何妨吟啸且徐行",
				"☕  回首向来潇洒处。归去。也无风雨也无晴",
			}
		elseif current_hour < 20 then
			greeting = {
				"🌙  老夫聊发少年狂，左牵黄，右擎苍",
				"🌙  会挽雕弓如满月，西北望，射天狼",
			}
		elseif current_hour < 22 then
			greeting = {
				"🌙  危楼高百尺，手可摘星辰",
				"🌙  不敢高声语，恐惊天上人",
			}
		else
			greeting = {
				"🌙  淡淡梅花香欲染，丝丝柳带露初干",
				"🌙  一片砧敲千里白，半轮鸡唱五更残",
			}
		end
		opts.section.footer.val = greeting
		alpha.setup(opts.config)
	end,
}
