estimate_redis_mem
==================

estimate redis used memory

2013-9-24 17:48:26
    estimate
        用于估计redis 占用内存的大小

            用法： ./estimate key_size value_size num
            示例： ./estiamte 6 13 20000
            结果：
                result = 1731072 Byte
                result = 1.65 MB

    estimate.c
        为源程序 其中的 estimate_2 函数 为粗略估计 ，没有 estimate 函数精确

    estimate_test.sh
        为实际测试脚本 ，具体使用时，需要修改其中的 redis ip,port
        并设计符合要求的 测试数据循环
