# deb-repo
PPA repo hosted with GitHub Pages

To use, first install the key:

`curl -fsSL https://cseelye.github.io/deb-repo/ppa/KEY.gpg | apt-key add -`

Then add the apt config:

```
curl -fsSL https://cseelye.github.io/deb-repo/ppa/cseelye_github.list -o /etc/apt/sources.list.d/cseelye_github.list
apt-get update
```

