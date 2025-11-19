#!/bin/bash
scores=()

while true
do
    echo "===================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급(GPA) 변환"
    echo "5) 종료"
    echo "===================="
    read -p "메뉴 선택: " sel

    case $sel in
        1)
            read -p "점수 입력: " s
            scores+=($s)
            ;;
        2)
            echo "입력된 점수: ${scores[@]}"
            ;;
        3)
            sum=0
            for n in "${scores[@]}"; do sum=$((sum+n)); done
            avg=$((sum / ${#scores[@]}))
            echo "평균 점수: $avg"
            ;;
        4)
            if [ "$avg" -ge 90 ]; then grade="A"; else grade="B"; fi
            echo "평균 등급(GPA): $grade"
            ;;
        5)
            echo "프로그램 종료"
            exit 0
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
done
