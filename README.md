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

## LSP 相关
```
npm install -g typescript-language-server
```

```
:TSInstall css scss json html vue javascript typescript
```
