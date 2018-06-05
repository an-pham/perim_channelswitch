# perim_channelswitch
### Introduction
This is the evaluation project for Seminar: "Free and Open Source Software" - hold in ITMO University, St. Petersburg, Russia in Summer 2018.

The aim is to develop an SDN-enabled management system for blockchain transaction channels with a quantum cryptography encoding. We developed a utility that can send the [specified REST API requests](https://github.com/BAlchemyLab/bal) for Ryu OpenFlow specialized application [rest_forward](https://github.com/BAlchemyLab/bal/blob/master/bal/rest_forward.py) for switching between unencrypted transaction channels and encrypted by Quantum Key Distribution (QKD).

### How to use

**1. Prerequisites**

*The following packages need to be installed*

- xinetd (http://manpages.ubuntu.com/manpages/bionic/man8/xinetd.8.html)
- curl
- dialog
- jq (https://stedolan.github.io/jq/)

*Locale vi_VN.UTF-8 must be enabled, if not, following these steps to enable it*

```
sudo nano /etc/locale.gen
# uncomment the locale you want to enable
# after change, regenerate
sudo locale-gen
```

**2. Install**

```
cd /perim_channelswitch`
make
```

**3. To run the program**

```
# local
switcher_ui
# over client/server model
nswitcher_ui
```

**4. To run with localization: Vietnamese**

```
LANG=vi_VN.UTF-8 switcher_ui
```
**5. Options**

```
# Display help
switcher_ui --help
# Program is run in GUI by default, to run in TUI
switcher_ui --tui
```

App developed by: An Pham, with reference from:

- https://github.com/BAlchemyLab
- https://github.com/itmo-infocom/calc_examples
