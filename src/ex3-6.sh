#!/bin/bash
echo "===== 셸 시작 ====="
echo "입력된 인자: $@"
python3 test.py "$@"
echo "===== 셸 종료 ====="
