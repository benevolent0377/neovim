
function NormalMode(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg= 'none' })

end


function MorningMode(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg= 'none' })

end


function BIOSMode(color)
	color = color or "darkblue"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	--vim.api.nvim_set_hl(0, 'NormalFloat', { bg= 'none' })

end
