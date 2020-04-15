total_dev=$(pactl list short sinks | wc -l)
echo "Volume Increase" >> ~/.config/i3/log

id=$(pactl list short sinks |tail -1| cut -c1-2)

echo $id >> ~/.config/i3/log
pactl set-sink-volume $id -5%
