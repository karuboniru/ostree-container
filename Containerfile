From quay.io/fedora/fedora-silverblue:39

RUN sed '0,/enabled=0/s//enabled=1/' -i /etc/yum.repos.d/fedora-updates-testing.repo && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable sshd.socket rpm-ostreed-automatic.timer && \
    rpm-ostree override remove \
      firefox firefox-langpacks \
      open-vm-tools open-vm-tools-desktop virtualbox-guest-additions qemu-guest-agent spice-vdagent && \
    rpm-ostree install \
      fcitx5 fcitx5-autostart fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-mozc fcitx5-qt \
      zsh htop wireguard-tools \
      systemd-container && \
    ostree container commit

COPY etc /etc
