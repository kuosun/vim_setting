# vim_setting
my vim setting

### set up

1. cd to user directory you want use this vim setting
2. git clone https://github.com/kuosun/vim_setting
3. mv .vimrc & .vim/ into this directory
```text
e.g. user is user_a
mv the .vimrc & .vim/ into user_a directory
/home/user_a/.vimrc
/home/user_a/.vim
```



now when you login as user_a, then vim every file can use this setting

1. sudo apt-get install git curl
2. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
3. use vim to any file and execute 
   :BundleInstall
   then install will start
