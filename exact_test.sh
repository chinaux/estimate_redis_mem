#! /bin/bash
pwd
begin=`./redis-cli info|grep "used_memory:"`
echo $begin
begin_mem=`echo $begin|awk -F":" '{print $2+0}'`

for (( start = 10000; start < 80000; start++ ))
do
#! /bin/bash

pwd



begin=`./redis-cli info|grep "used_memory:"`
echo $begin
begin_mem=`echo $begin|awk -F":" '{print $2+0}'`

for (( start = 10000; start < 80000; start++ ))
do
done

end=`./redis-cli info|grep "used_memory:"`
echo $end
end_mem=`echo $end|awk -F":" '{print $2+0}'`
echo "num=70000"
echo `expr $end_mem - $begin_mem` "Byte"

./redis-cli flushdb



begin=`./redis-cli info|grep "used_memory:"`
echo $begin
begin_mem=`echo $begin|awk -F":" '{print $2+0}'`

for (( start = 10000; start < 90000; start++ ))
do
    ./redis-cli set aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa$start baaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa$start > /dev/null
done

end=`./redis-cli info|grep "used_memory:"`
echo $end
end_mem=`echo $end|awk -F":" '{print $2+0}'`
echo "num=80000"
echo `expr $end_mem - $begin_mem` "Byte"

./redis-cli flushdb
