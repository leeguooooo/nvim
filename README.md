# NeoVim 配置

> 有哪些需要手动配置
> 参考：https://juejin.cn/book/7051157342770954277

## 配置文件下载

> ~/.config

```
gh repo clone leeguooooo/nvim
```

## packer 插件管理器下载

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## 字体图标 Nerd fonts

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

## 文件搜索

```
brew install fd
brew install ripgrep
```
## 输入法问题
> 不再需要内置输入法,使用 `brew install --cask input-source-pro` 代替
```
brew tap daipeihust/tap && brew install im-select
OR
curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
```

## python3 支持
```
pip3 install --upgrade pynvim
```

## LSP 相关
```
npm install -g typescript-language-server
```

```
TSInstall css scss json html vue javascript typescript
```

## lazygit
```
brew install lazygit
```

## github AI 配置
```
:Copilot setup
```

## 其他配置

```
brew install shfmt
pip install black
sudo gem install rubocop
```

## leetcode 测试中
```
pip3 install keyring browser-cookie3 --user

```

## debugger

```
git clone https://github.com/microsoft/vscode-js-debug
cd vscode-js-debug
npm install --legacy-peer-deps
npm run compile
```


https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Javascript

## markdow preview

```
brew install pandoc

npm install -g @compodoc/live-server

```

### vtsls 替代 tsserver
```
npm install -g @vtsls/language-server
```
