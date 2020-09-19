###############################################################
## Install Visual Studio Code Extensions Script for Windows
##  Refered to:
##  - https://qiita.com/Kosen-amai/items/03632dee2e1694652f06
##  - https://qiita.com/Midoliy/items/d19dc8c1c97078b1e640
###############################################################

# カレントにパスが通っていない場合は通す
if (-not $env:path.Split(';').Contains('.\')) {
    $env:path = $env:path + ';.\'
}

# binへのパスが未登録ならカレントディレクトリ変更
$binPath = Join-Path ([Environment]::GetFolderPath('LocalApplicationData')) 'Programs\Microsoft VS Code\bin'
if ($env:path.IndexOf($binpath, [System.StringComparison]::OrdinalIgnoreCase) -eq -1) {
    cd $binPath
}

# Extension Packs

# 日本語パック(必要なら)
# code --install-extension MS-CEINTL.vscode-language-pack-ja --force

# Intellisense support
code --install-extension visualstudioexptteam.vscodeintellicode --force
code --install-extension ionutvmi.path-autocomplete --force

# Visualize Support
code --install-extension vscode-icons-team.vscode-icons --force
code --install-extension IBM.output-colorizer --force
code --install-extension emilast.LogFileHighlighter --force
code --install-extension shardulm94.trailing-spaces --force
code --install-extension mosapride.zenkaku --force
code --install-extension oderwat.indent-rainbow --force
code --install-extension ryu1kn.partial-diff --force

# Pretter
code --install-extension esbenp.prettier-vscode --force

# PowerShell
code --install-extension ms-vscode.powershell --force

# Bookmark
code --install-extension alefragnani.Bookmarks --force
code --install-extension alefragnani.numbered-bookmarks --force

# Bracket Support
code --install-extension 2gua.rainbow-brackets --force

# Git
code --install-extension eamodio.gitlens --force
code --install-extension donjayamanne.githistory --force
code --install-extension mhutchie.git-graph --force
code --install-extension codezombiech.gitignore --force

# Markdown
code --install-extension yzhang.markdown-all-in-one --force
code --install-extension DavidAnson.vscode-markdownlint --force
code --install-extension yzane.markdown-pdf --force

# HTML
code --install-extension abusaidm.html-snippets --force
code --install-extension mkaufman.HTMLHint --force
code --install-extension Zignd.html-css-class-completion --force

# XML
code --install-extension DotJoshJohnson.xml --force

# lint
code --install-extension taichi.vscode-textlint --force
code --install-extension ics.japanese-proofreading --force

# Edit CSV with table
code --install-extension janisdd.vscode-edit-csv --force

# Todo Tree
code --install-extension gruntfuggly.todo-tree --force

# Docker
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools --force

# Remote Development
code --install-extension ms-vscode-remote.vscode-remote-extensionpack --force

# LiveShare
code --install-extension ms-vsliveshare.vsliveshare-pack --force

# PDF Viewer
code --install-extension tomoki1207.pdf --force

### API Development

# REST Client
code --install-extension humao.rest-client --force

# SQLTools
code --install-extension mtxr.sqltools --force

# Swagger Viewer
code --install-extension arjun.swagger-viewer --force

#################################################
# Optional Language Extensions
#################################################

# C#
code --install-extension ms-vscode.csharp --force

# C++
code --install-extension ms-vscode.cpptools --force

# Java
code --install-extension vscjava.vscode-java-pack --force
code --install-extension pivotal.vscode-boot-dev-pack --force
code --install-extension gabrielbb.vscode-lombok --force

# Kotlin
code --install-extension mathiasfrohlich.kotlin --force

# Python
code --install-extension ms-python.python --force

# Nim
code --install-extension kosz78.nim --force

# Dart
code --install-extension dart-code.dart-code --force

# Angular
code --install-extension angular.ng-template --force
code --install-extension mikael.angular-beastcode --force

# TypeScript
code --install-extension eg2.tslint --force

code --install-extension stevencl.addDocComments --force

# Re:View
code --install-extension atsushieno.language-review --force