sudo killall -9 thunderbird
sudo date -s "-90 days"
faketime -m -f "+90d" thunderbird &
