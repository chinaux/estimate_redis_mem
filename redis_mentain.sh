#!/bin/bash
#####################################################
# this script use to maintain redis db

#useage ./redis_test.sh [del|get] [kxxx]
 
####################################################

#if [ $# -ne 3 ]; then
#	echo "Usage $0 [del|get] [kxxx]"
#	exit;
#if

fun_del() {
	shift 1
	KEYS=`redis-cli -n 1 keys $1* |awk '{print $1}'`
	for key in $KEYS
	do 
		value=`redis-cli -n 1 del $key`
		let a=$a+1
	done
	echo $a
}

fun_get() {
	shift 1
	KEYS=`redis-cli -n 1 keys $1* |awk '{print $1}'`
	for key in $KEYS
	do 
		value=`redis-cli -n 1 get $key`
		if [ "$value" >= "500" ]; then
			echo $key $value
		fi
		#echo $key $value
		let a=$a+1
	done
	echo $a
}

fun_test() {
	shift 1
	echo $0,$1,$2
}

case "$1" in
	del)
		fun_del $@;
		;;
	get)
		fun_get $@;
		;;
	test)
		fun_test $@;
		;;
	*)
		echo "Usage $0 [del|get] [kxxx]"
esac