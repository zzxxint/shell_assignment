#!/bin/bash
DB="./DB.txt"

while true
do
    echo "======================="
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색"
    echo "4) 수행 내용 검색"
    echo "5) 종료"
    echo "======================="
    read -p "선택: " sel

    case $sel in
        1)
            read -p "이름: " name
            read -p "전화번호/생일: " info
            echo "INFO,$name,$info" >> $DB
            ;;
        2)
            read -p "날짜: " day
            read -p "내용: " note
            echo "NOTE,$day,$note" >> $DB
            ;;
        3)
            read -p "검색할 이름: " name
            grep "INFO,$name" $DB
            ;;
        4)
            read -p "검색할 날짜: " day
            grep "NOTE,$day" $DB
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
