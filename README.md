vagrantfile-freebsd-shellgei
===

USP友の会(https://www.usptomo.com/)で行われている通称「シェル芸」の練習を、FreeBSD上で行うためのVagrant設定です。
このリポジトリをcloneし、vagrant upするだけで、「シェル芸」でよく使用するコマンドがセットアップされたFreeBSDの仮想マシンを作成することができます。

※このリポジトリは @kunst1080 が個人的に作成しているものです。問い合わせなどは[本人のTwitterアカウント](https://twitter.com/kunst1080)か[Issues](https://github.com/kunst1080/vagrantfile-freebsd-shellgei/issues)へお願いします。


## Getting Started
1. Install dependencies:

  - VirtualBox
  - Vagrant

2. Clone this repository:

  ```bash
  git clone https://github.com/kunst1080/vagrantfile-freebsd-shellgei.git
  ```

3. Start virtual machine:

  ```bash
  cd vagrantfile-freebsd-shellgei
  vagrant up
  vagrant ssh
  ```


## License
The MIT License


※このリポジトリは、 https://github.com/kunst1080/vagrantfile-freebsd-base をフォークし、プロビジョニング設定を追加したものです。
