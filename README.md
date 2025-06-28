Config files for Neovim

To set up neovim in a new machine, clone this repository in the nvim config directory
(most likely at `~/.config/nvim`)

```shell
git clone https://github.com/almenal/nvim-setup.git ~/.config/nvim
```

Then open neovim in any location with

```
neovim .
```

You will probably see a lot of error messages due to misconfigured stuff.
Don't panick, just synchronize your plugins by running

```
:PackerSync
```

Let packer due its magic and you should be good to go.
