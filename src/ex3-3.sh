#!/bin/bash
scores=("$@")
sum=0

for s in "${scores[@]}"
do
    if [ "$s" -ge 90 ]; then grade="A"; else grade="B"; fi
    echo "점수: $s → 등급: $grade"
    sum=$((sum + s))
done

avg=$((sum / ${#scores[@]}))

if [ "$avg" -ge 90 ]; then avg_grade="A"; else avg_grade="B"; fi

echo "평균 점수: $avg → 평균 등급: $avg_grade"
