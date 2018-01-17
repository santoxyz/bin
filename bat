P=/sys/class/power_supply/BAT0
C=charge
echo $(($(cat $P/${C}_now)*100/$(cat $P/${C}_full)))% $(cat $P/status)
echo Health: $(($(cat $P/${C}_full)*100/$(cat $P/${C}_full_design)))% 
