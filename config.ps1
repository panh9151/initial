# config.ps1

# VSCode extension
$Extensions = @(
    "acarreiro.calculate",
    "alefragnani.bookmarks",
    "bmewburn.vscode-intelephense-client",
    "christian-kohler.path-intellisense",
    "digitalbrainstem.javascript-ejs-support",
    "eamodio.gitlens",
    "esbenp.prettier-vscode",
    "formulahendry.auto-rename-tag",
    "glenn2223.live-sass",
    "ionutvmi.path-autocomplete",
    "kalimahapps.tailwind-config-viewer",
    "lczerniawski.unused-css-finder",
    "mhutchie.git-graph",
    "mrmlnc.vscode-autoprefixer",
    "mrmlnc.vscode-scss",
    "pranaygp.vscode-css-peek",
    "rifi2k.format-html-in-php",
    "ritwickdey.liveserver",
    "rvest.vs-code-prettier-eslint",
    "stivo.tailwind-fold",
    "streetsidesoftware.code-spell-checker",
    "stylelint.vscode-stylelint",
    "wayou.vscode-todo-highlight"
)

# Keybindings
$Keybindings = @(
    @{
        key = "ctrl+shift+/"
        command = "editor.action.insertSnippet"
        when = "editorTextFocus"
        args = @{ name = "Block Comment" }
    },
    @{
        key = "shift+space"
        command = "extension.calculateReplace"
        when = "editorTextFocus"
    }
)

# Snippets
$Snippets = @{
    "Short PHP Tag" = @{
        prefix = "ps"; body = @("<? \$1 ?>"); description = "Insert short PHP tag"
    }
    "Short PHP Echo" = @{
        prefix = "pse"; body = @("<?= \$1 ?>"); description = "Insert short PHP echo tag"
    }
    "Full PHP Tag" = @{
        prefix = "pf"; body = @("<?php", "`t\$1", "?>"); description = "Insert full PHP tag"
    }
    "Get txt CSS" = @{
        prefix = "txt"; body = @(
            "font-family: \$1;",
            "font-weight: \$2;",
            "font-size: \$3rem;",
            "line-height: lh(\$3, \$4);",
            "letter-spacing: \$5em;",
            "color: \$6;"
        ); description = "Insert text CSS block"
    }
    "Get background CSS" = @{
        prefix = "bg"; body = @("background: url(assets/img/\$1) no-repeat center / cover;"); description = "Insert background"
    }
    "Get transition CSS" = @{
        prefix = "trans"; body = @("transition: \$1 ease-in-out .3s;"); description = "Insert transition"
    }
    "Get border CSS" = @{
        prefix = "bor"; body = @("border: 1px solid \$1;"); description = "Insert border"
    }
}
