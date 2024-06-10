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
	echo cleanup!
}

function build() {
    if [ "${DEVICE_DEFCONFIG}" == "gki_defconfig" ]; then
		echo gki detected!
		sleep 3
		echo compiling!
        . build_gki.sh
    else
		echo non-gki detected!
		sleep 3
		echo compiling!
        . compile.sh
    fi
}


target
check
cleanup
build
