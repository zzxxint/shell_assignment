#!/bin/bash
echo 'export MYENV="Hello Shell"' >> ~/.bashrc
source ~/.bashrc
echo $MYENV

