# kill 5000/8500/8501/8502/8602/8702
ports=(5000 8500 8501 8502 8602 8702)
for port in "${ports[@]}"
do
kill $(lsof -i:$port | awk '{print $2}' | awk 'NR==2{print}')
done