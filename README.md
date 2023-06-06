# sample-devcontainer-with-neovim

コンテナ内でヘッドレスモードでneovimを起動する
```bash
devcontainer up --workspace-folder .
devcontainer exec --workspace-folder . nvim --headless --listen 0.0.0.0:6666
```

ホストから接続する
```bash
nvim --server localhost:6666 --remote-ui
```
