-- packer auto install snippet on new machine
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    --use 'ayu-theme/ayu-vim'
    -- набор Lua функций, используется как зависимость в большинстве
    -- плагинов, где есть работа с асинхронщиной
    use 'nvim-lua/plenary.nvim'

    -- конфиги для LSP серверов, нужен для простой настройки и
    -- возможности добавления новых серверов
    use 'neovim/nvim-lspconfig'

    -- движок автодополнения для LSP
    use {
        'hrsh7th/nvim-cmp',
        after = 'LuaSnip',
        config = function()
            require("plugins.cmp")
        end
    }
    -- зависимости для движка автодополнения
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    --    use 'hrsh7th/cmp-cmdline'

    use 'saadparwaiz1/cmp_luasnip'
    -- набор готовых сниппетов для всех языков, включая go
    use 'rafamadriz/friendly-snippets'

    -- движок сниппетов
    use {
        'L3MON4D3/LuaSnip',
        after = 'friendly-snippets',
        config = function()
            require('luasnip/loaders/from_vscode').load({
                paths = { '~/.local/share/nvim/site/pack/packer/start/friendly-snippets' }
            })
        end
    }

    -- парсер для всех языков программирования, цветной код
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            -- так подгружается конфигурация конкретного плагина
            -- ~/.config/nvim/lua/plugins/treesitter.lua
            require('plugins.treesitter')
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('plugins.telescope')
        end
    }

    use {
        'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-web-devicons').setup({ default = true; })
        end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        config = function()
            require('plugins.nvim-tree')
        end
    }

    -- ИИ автодополнения
    use {
        'tzachar/cmp-tabnine',
        run='./install.sh'
    }

    -- иконки в выпадающем списке автодополнений (прямо как в vscode)
    use'onsails/lspkind-nvim'

    -- статусбар, аналог vim-airline, только написан на lua
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {
                --options = { theme  = 'ayu_light' },
                sections = {
                    lualine_c = {
                        {
                            'filename',
                            file_status = true,      -- Displays file status (readonly status, modified status)
                            newfile_status = false,   -- Display new file status (new file means no write after created)
                            path = 1,                -- 0: Just the filename
                            -- 1: Relative path
                            -- 2: Absolute path
                            -- 3: Absolute path, with tilde as the home directory

                            shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                            -- for other components. (terrible name, any suggestions?)
                            symbols = {
                                modified = '[+]',      -- Text to show when the file is modified.
                                readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                                unnamed = '[No Name]', -- Text to show for unnamed buffers.
                                newfile = '[New]',     -- Text to show for new created file before first writting
                            }
                        }
                    }
                }
            }
        end
    }

    -- автоматические закрывающиеся скобки
    use {
        'windwp/nvim-autopairs',
        config = function()
            require("nvim-autopairs").setup()
        end
    }

    -- теги справа
    use 'preservim/tagbar'


    -- go tools
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'ray-x/guihua.lua'

    -- плагин для простого комментирования кода
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- session-manager
    use {
        'natecraddock/sessions.nvim',
        config = function()
            require('sessions').setup()
        end
    }

    --buffer
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require('plugins/barbar')
        end
    }


    --buffer
    -- use {
    --     'akinsho/bufferline.nvim',
    --     tag = "v2.*",
    --     requires = 'kyazdani42/nvim-web-devicons',
    --     config = function()
    --         require('plugins/bufferline')
    --     end
    -- }


    use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
        require("toggleterm").setup()
    end}

    use 'nicwest/vim-http'

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("plugins/todo-comments")
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('plugins/gitsigns')
        end
    }

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            require("plugins/hop")
        end
    }

    use {
        'karb94/neoscroll.nvim',
        config = function()
            require("plugins/neoscroll")
        end
    }

    use 'brooth/far.vim'

    -- use {
        --     'kazhala/close-buffers.nvim',
        --     config = function()
            --         require("plugins/close-buffers")
            --     end
            -- }

            use {
                'sebdah/vim-delve'
            }

            use {
                "olexsmir/gopher.nvim",
                requires = {
                    "nvim-lua/plenary.nvim",
                    "nvim-treesitter/nvim-treesitter",
                },
                config = function()
                    require("plugins/gopher")
                end
            }

            use 'antoinemadec/FixCursorHold.nvim'

            use({
                'projekt0n/github-nvim-theme',
                config = function()
                    require('github-theme').setup({
                        theme_style = "light",
                        keyword_style = "NONE",
                        comment_style = "NONE",
                    })
                end
            })
            use {
                'sakhnik/nvim-gdb',
                run='./install.sh'
            }

        end)

