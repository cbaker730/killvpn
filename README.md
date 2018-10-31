# killvpn

Protection against leaving a VPN session open indefinitely. This script will kill the open session every four hours, assuming it's openvpn and there's only one of them.

$ sudo crontab -e

0 */4 * * * /home/user/killvpn.sh
