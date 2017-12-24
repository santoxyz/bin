P=/sys/class/power_supply/BAT0
echo $(($(cat $P/charge_now)*100/$(cat $P/charge_full)))% $(cat $P/status)
