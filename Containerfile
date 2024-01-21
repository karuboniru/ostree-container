From quay.io/fedora/fedora-silverblue:39

COPY etc /etc

RUN sed '0,/enabled=0/s//enabled=1/' -i /etc/yum.repos.d/fedora-updates-testing.repo && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable sshd.socket rpm-ostreed-automatic.timer && \
    rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install \
      fcitx5 fcitx5-autostart fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-mozc fcitx5-qt \
      zsh htop && \
    ostree container commit
