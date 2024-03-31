## Úvod:

👉 Kakoune Front-End Power postavený na [LSP](https://github.com/kakoune-lsp/kakoune-lsp).

👉 [Kakoune](http://kakoune.org/) je modální editor pro [Linux](http://www.linux.cz/) a [macOS](https://cs.wikipedia.org/wiki/MacOS) jako je třeba [Vim](https://www.vim.org/) či [Neovim](https://neovim.io/). . Z Kakoune vychází také jeden velmi oblíbený modální editor [Helix-editor](https://helix-editor.com/). Jak Kakoune, tak Helix se od Vim a Neovim liší v ovládání, kde je opačná logika příkazu a je bližší lidské řeči. Nespornou výhodou Kakoune je oproti Helixu možnost rozšířit aplikaci o pluginy. Proto je Kakoune vhodný pro zkušenější uživatele. Náš web by Ti měl pomoct s prvotním nastavením. Pokud si i tak na tento editor netroufáš Helix, je skvělá náhrada.

👉 Tato distribuce nefunguje tak, že jen kliknete na tlačítko a nainstaluje se. Vede Tě k samostatné instalaci pomocí tohoto webu. Cílem je pochopit, jak Kakoune funguje, abyste si mohli sami vše modifikovat.

👉 Toto nastavení je primárně pro vývoj webu, ale není problém si vše přizpůsobit. Inspiroval jsem se pluginy, které jsem využíval ve VSCode a Webstorm.

👉 Velký důraz je kladen na rychlost a lehkost.

👉 Tento blog je stále ve vývoji a postupně se na něm pracuje.

👉 Pro nejlepší zážitek s Kakoune doporučuji používat multiplexor [Zellij](https://git.archoslinux.cz/kankys/zellij-mySetup) , ale není to samozřejmě podmínkou.

## Přednosti:

👉 Hlavní předností tohoto nastavení jsou AutoSave, doplňování HTML, CSS, JS a zkratky k zakomentování a odkomentování kódu. Taky je zde několik pluginu pro příjemnější práci v Kakoune.

👉 LSP se mi velmi osvědčilo v modálním editoru [Helix-editor](https://helix-editor.com/). Mou konfiguraci Helixu najdete [zde](https://git.archoslinux.cz/kankys/Helix-frontend-setup).

👉 Ta nejlepší témata v Kakoune nemusíš hledat, najdeš je po instalaci. Defaultně je v naší konfiguraci nastaveno gruvbox-dark.

👉 Témá v Kakoune si jednoduše změníš v command line příkazem `colorscheme` a tlačítkem Tab se budeš přepínat mezi jednotlivými tématy. Command mode, česky příkazový mód, vyvoláš zkratkou **Ctrl + :** .

![Homescreen](https://lukaskanka.cz/index/kakoune/img/home.png) ![Zellij](https://lukaskanka.cz/index/kakoune/img/config.png) ![Command](https://lukaskanka.cz/index/kakoune/img/command.png)

## Instalace a nastavení:

👉 Pokud ještě nemáš nainstaluj si, [Kakoune](https://lukaskanka.cz/index/kakoune/index.html).

👉 Nejprve si zálohuj své aktuální nastavení Kakoune!!!

👉 Linux & Mac:

~/.config/kak/kakrc

👉 Aby Kakoune dobře komunikoval s LSP, je potřeba mít nainstalovaný [Rust](https://www.rust-lang.org/).

## Node.js:

👉 Doporučuji mít nainstalovaný [Node.js](https://nodejs.org/en).

👉 Pro správnou funkčnost LSP si doinstaluj tyto balíčky:

[vscode-html-language-server](https://github.com/microsoft/vscode-html-languageservice)

[vscode-css-language-server](https://github.com/microsoft/vscode-css-languageservice)

[typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)

[emmet-ls](https://github.com/aca/emmet-ls)

[tailwindcss-language-server](https://github.com/tailwindlabs/tailwindcss-intellisense/blob/master/packages/tailwindcss-language-server/README.md)

[marksman](https://github.com/artempyanykh/marksman)

[markdoc-ls](https://github.com/markdoc-extra/markdoc-ls)

👉 A také si doinstaluj tento server pro správnou funkčnost HTML v LSP příkazem: **npm install -g vscode-{html,css,json}-languageserver-bin** .

👉 Dále si v Node.js nainstaluj [Live-server](https://www.npmjs.com/package/live-server).

👉 Platí v případě, že chceš dělat front-end nebo programuješ v Javascriptu.

👉 Ve svém projektu budeš moci pouštět index.html příkazem:

npx live-server

👉 Všechny servery, co si můžeš pomocí LSP nainstalovat, najdeš [zde](https://github.com/kakoune-lsp/kakoune-lsp/wiki/How-to-install-servers).

## Kakoune:

👉 Pro instalaci Kakoune Front-End Power Ti stačí stáhnout pouze soubor **kakrc** z tohoto [repozitáře](https://git.archoslinux.cz/kankys/Kakoune-modal-editor-config) .

👉 Ulož ho do kořenováho adresáře **~/.config/kak/**. **Nezapomeň na zálohu stávajících souborů, pokud máš i své configy.**

👉 Kakoune pustíš v terminálu příkazem **kak**.

👉 V Kakoune zadej do command line **plug-install**, tím nainstaluješ všechny pluginy. Restartuj Kakoune.

👉 Pokud Ti některý plugin chybí, můžeš ho lehce doinstalovat nebo naopak odinstalovat. Více informací najdeš v Kakoune [dokumentaci](https://github.com/mawww/kakoune#3-basic-interaction) nebo velmi Ti rád poradím viz. [Kontakty](https://lukaskanka.cz/index/kakoune/index.html#contact).

👉 Pokud některý plugin nechceš používat, stačí ho v souboru **kakrc** zakomentovat pomocí hastagu **#**.

👉 Tuto konfiguraci používám na Linuxu i MacOS.

## Plán Kakoune Front-End Power:

👉 Do budoucna můžeš očekávat tyto nové funkce a další novinky:

👉 Web na vlastní doméně. Zatím Kakoune Front-End Power najdeš [zde](https://lukaskanka.cz/kakoune/index.html).

👉 Nové pluginy.

👉 Návody k pluginům, jak nastavit a jak s nimi pracovat.

👉 Návody k práci s Kakoune.

## Výběr pluginu v Kakoune Front-End Power:

👉 **plug.kak** nejduležitější plugin, aby bylo možné instalovat další pluginy.

👉 **kakoune-lsp**

👉 **luar** rozšíří možnost instalovat pluginy napsané v jazyce Lua.

👉 **byline.kak** vybere celý řádek pomocí klávesy **x** jako v Helix-editoru.

👉 **auto-pairs** automaticky doplní závorky.

👉 **fzf.kak** rychlé asynchronní vyhledávaní souborů.

## Otázky a odpovědi:

👉 Kolik Kakoune stojí? -> Nic, Kakoune je zdarma.

## Kontakty:

👉 [Kakoune community Telegram skupina](https://t.me/+RlXM8oEZ8TJkMWVk)

👉 [Osobní web autora](https://lukaskanka.cz/)

👉 [Gitea profil](https://git.archoslinux.cz/kankys)

👉 [GitHub](https://github.com/LukasKanka/)

👉 [Nostr](https://nostr.band/npub12xzu8ejrl9cwpd034cqj5jtuztn4mxp3em2frckm9tk28kmy48vqr0u0yu)

👉 [Mastodon](https://mastodon.arch-linux.cz/@Kankys)

## Podpora:

👉 Pokud mě chceš podpořit nebo se podílet na obsahu tohoto webu, budu rád, když mi napíšeš.

👉 Taky můžeš tento projekt podpořit pár Satoshi:

![Satoshi](https://lukaskanka.cz/index/about/img/sat.jpeg)

## Další projekty a odkazy:

👉 [ArchLinux CZ](https://arch-linux.cz/)

👉 [Vyhledávač SearXNG CZ](https://searxng.cz/)

👉 [EndeavourOS Linux](https://endeavouros.com/)

👉 [i3 window manager](https://i3wm.org/)

Copyright © [Lukáš Kaňka](https://git.archoslinux.cz/kankys) 2024
