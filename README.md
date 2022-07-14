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

