#! /bin/bash
# bash recognize array
# sh dont' suppport array

# vim:set fdm=marker  fdl=0: vim modeline

deb_packages=(
#{{{
     # guake
     # gdebi
     # vim-gnome
     # chromium-browser

     # fcitx-googlepinyin
     # fcitx-rime
     # fcitx-config-gtk       # 图形化配置fcitx
     # libgnome2-bin          # gnome-open

     git
     tmux
     zsh
     vim

     iotop
     htop
     ack

     ctags
     cscope

     python-pip
     python3-pip

#}}}
    )

pip_packages=(
#{{{
    # shadowsocks
#}}}
    )

deb_install_package() {
#{{{
    package=$1

    # yes install
    sudo apt-get install $package -y
#}}}
}

pip3_install_package() {
#{{{
    package=$1

    # yes install
    sudo pip2 install $package
#}}}
}

successMsg() {
# {{{
    SETCOLOR_SUCCESS="echo -en \\033[1;32m"
     SETCOLOR_NORMAL="echo -en \\033[0;39m"     # 之后的颜色恢复正常

    #echo $1  &&  $SETCOLOR_FAILURE
    $SETCOLOR_SUCCESS && echo $@        # 先设置颜色, 再输出信息
    $SETCOLOR_NORMAL                    # 之后的颜色要正常才可以
# }}}
}

twoline_echo() {
#{{{
    msg=$@
    echo
    #echo $msg
    successMsg $msg
    echo
#}}}
}

install_all() {
#{{{
    # sudo apt-get update     # update source list

    # 1:deb
    twoline_echo "installing deb packages"
    for file in ${deb_packages[@]} ; do
        deb_install_package   $file
    done

    # 2:pip upgrade
    twoline_echo "upgrading pip"
    sudo pip3 install --upgrade pip

    # 3:pip install
    twoline_echo  "installing pip2"
    for file in ${pip_packages[@]} ; do
        pip3_install_package   $file
    done

#}}}
}

install_all
