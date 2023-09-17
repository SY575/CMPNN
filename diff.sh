base=$1
test=$2
if [ -z "$base" ]; then
    echo "Error: base is empty"
    exit 1
fi
if [ -z "$test" ]; then
    echo "Error: test is empty"
    exit 1
fi
tasks=("bbbp" "clintox" "esol" "freesolv" "sider" "tox21")
# tasks=("bbbp" "clintox")
printf "%-20s %-10s %-10s %-10s %-10s\n" "Task" "Base" "Test" "Diff" "Percent"

for index in "${!tasks[@]}"
do
    base_path="$base/${tasks[$index]}/verbose.log"
    test_path="$test/${tasks[$index]}/verbose.log"
    last_base_line=$(grep -v '^$' "$base_path" | tail -n 1)
    last_test_line=$(grep -v '^$' "$test_path" | tail -n 1)
    base_val=$(echo $last_base_line | grep -oP '(?<=auc = )\d+\.\d+')
    test_val=$(echo $last_test_line | grep -oP '(?<=auc = )\d+\.\d+')
    difference=$(echo "$test_val - $base_val" | bc)
    percentage=$(echo "scale=2; ($difference / $base_val) * 100" | bc)
    if (( $(echo "$difference < 0" | bc -l) )); then
        percentage="-${percentage#-}"
    else
        percentage="+$percentage"
    fi
    # echo "${tasks[$index]} base: $base_val,test: $test_val,diff: $difference,percent: $percentage%"
    printf "%-20s %-10s %-10s %-10s %-10s\n" "${tasks[$index]}" "$base_val" "$test_val" "$difference" "$percentage%"
done
