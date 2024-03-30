# Přidá řádkování
add-highlighter global/ number-lines;

# Zvýraznění závorek
add-highlighter global/ show-matching

# Comment lines -> Ctrl + k (c= kolize)
map global normal <c-k> ":comment-line<ret>"

# colorscheme
colorscheme gruvbox-dark

# Autosave s upozorněním
define-command save-buffer -docstring "save current buffer and show info"  %{
  write
  info "file saved at %sh{date}"
}
hook global ModeChange pop:insert:.* %{
    save-buffer
}

# FZF na space + f a další
map -docstring "open fzf" global user f ": fzf-mode<ret>"


# Nastavení potvrzování TAB
hook global InsertCompletionShow .* %{
          map window insert <s-tab> <c-p>
        map window insert <tab> <c-n>

}
hook global InsertCompletionHide .* %{
    unmap window insert <tab> <c-n>
    unmap window insert <s-tab> <c-p>
}


# Zalamování markdown
hook global WinSetOption filetype=markdown %{
  add-highlighter -override global/markdown-wrap wrap -word

  hook -once -always window WinSetOption filetype=.* %{
    remove-highlighter global/markdown-wrap
  }
}

# Změna nebo vypnutí clippyho -> clippy, dilbert, cat, a none.
set-option global ui_options terminal_assistant=cat 

#ESLint setup lint (javascript)
hook global WinSetOption filetype=javascript %{
  set buffer lintcmd 'eslint --config .eslintrc.js --format=node_modules/eslint-formatter-kakoune'
  lint-enable
  lint
}

# HTML setup lint
hook global WinSetOption filetype=html %{
    set-option window lintcmd "tidy -e --gnu-emacs yes --quiet yes 2>&1"
}

# Mrkdown setup lint
 hook global WinSetOption filetype=markdown %{
    set-option window lintcmd "proselint"
}

# CSS setup lint
hook global WinSetOption filetype=css %{
    set-option window lintcmd "npx stylelint --formatter unix --stdin-filename='%val{buffile}'"
}


eval %sh{kak-lsp --kakoune -s $kak_session}  # Not needed if you load it with plug.kak.
lsp-enable

# Instalace pluginu
source "%val{config}/plugins/plug.kak/rc/plug.kak"
plug "andreyorst/plug.kak" noload

plug "andreyorst/fzf.kak"config %{
  require-module fzf
  require-module fzf-grep
  require-module fzf-file
} defer fzf %{
  set-option global fzf_highlight_command "lat -r {}"
} defer fzf-file %{
  set-option global fzf_file_command "fd . --no-ignore-vcs"
} defer fzf-grep %{
  set-option global fzf_grep_command "fd":
} 

# plug "andreyorst/powerline.kak" defer kakoune-themes %{
#   powerline-theme gruvbox-dark
# } # defer powerline %{
  # powerline-format global "git lsp bufname filetype mode_info lsp line_column position"
  # set-option global powerline_separator_thin ""
  # set-option global powerline_separator ""
# }
#  config %{
#   powerline-start
# }



# Automatické doplňění protější závorky
plug "alexherbo2/auto-pairs.kak" config %{
  enable-auto-pairs
}

#plug "kakoune-lsp/kakoune-lsp" do %{
 #   cargo install --locked --force --path .
    # optional: if you want to use specific language servers
 #   mkdir -p ~/.config/kak-lsp
  #  cp -n kak-lsp.toml ~/.config/kak-lsp/
  # }

   plug "ul/kak-lsp" do %{
    cargo install --locked --force --path .
} config %{
    hook global WinSetOption filetype=(jsx|tsx|typescript|javascript) %{
        lsp-enable-window
        lsp-auto-hover-disable
        lsp-auto-signature-help-enable
        # I format directly with prettier, but you could also configure the
        # formatter option of your LSP and then call it with:
        # hook window BufWritePre .* lsp-formatting-sync
        set-option window formatcmd "prettier --stdin-filepath _.tsx"
        set-option window indentwidth 2
        hook window BufWritePre .* format
    }
}

# Vybere pomocí x celý řádek jako v Helix-editor
plug "evanrelf/byline.kak" config %{
  require-module "byline"
}

# Dovolí instalovat pluginy v Lua
plug "gustavo-hms/luar" %{
  require-module luar
}

# Barevné závorky
plug 'jjk96/kakoune-rainbow'
 
plug "occivink/kakoune-snippets"

dZobrazuje strukturu souboru
plug "andreyorst/tagbar.kak" defer "tagbar" %{
    set-option global tagbar_sort false
    set-option global tagbar_size 40
    set-option global tagbar_display_anon false
} config %{
    # if you have wrap highlighter enamled in you configuration
    # files it's better to turn it off for tagbar, using this hook:
    hook global WinSetOption filetype=tagbar %{
        remove-highlighter window/wrap
        # you can also disable rendering whitespaces here, line numbers, and
        # matching characters
    }
}


# themes
plug "secondary-smiles/kakoune-themes" theme config %{
  colorscheme gruvbox-dark 
  }


  