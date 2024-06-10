#!/bin/bash

echo Starting Compile Script . . .

function target(){
	. target.sh
}

function check(){
	. check.sh
}

function cleanup(){
	sudo rm -rf ${KERNEL_ROOTDIR}/out
}

function compile(){
	. compile.sh
}

target
check
cleanup
compile
