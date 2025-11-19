#!/bin/bash
run_cmd() {
    eval "ls $1"
}
run_cmd "$1"
