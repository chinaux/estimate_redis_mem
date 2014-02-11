#include <stdlib.h>
#include <stdio.h>
#include <math.h>

/*
 * string类型的内存大小 = 键值个数 * (dictEntry大小 + redisObject大小 + 包含key的sds大小 + 包含value的sds大小) + bucket个数 * 4
 *
 * */

int get_exact_sds_size(int sds_size){

    if(sds_size < 1 || sds_size > 2560){
        printf("sds_size should in [1-2560]\n");
        return -1;

    }
    else if(sds_size < 4)
        return 4;
    else if(sds_size < 8)
        return 8;
    else if(sds_size < 16)
        return 16;
    else if(sds_size < 32)
        return 32;
    else if(sds_size < 48)
        return 48;
    else if(sds_size < 64)
        return 64;
    else if(sds_size < 80)
        return 80;
    else if(sds_size < 96)
        return 96;
    else if(sds_size < 112)
        return 112;
    else if(sds_size < 128)
        return 128;
    else if(sds_size < 192)
        return 192;
    else if(sds_size < 256)
        return 256;
    else if(sds_size < 320)
        return 320;
    else if(sds_size < 384)
        return 384;
    else if(sds_size < 448)
        return 448;
    else if(sds_size < 512)
        return 512;
    else if(sds_size < 768)
        return 768;
    else if(sds_size < 1024)
        return 1024;
    else if(sds_size < 1280)
        return 1280;
    else if(sds_size < 1536)
        return 1536;
    else if(sds_size < 1792)
        return 1792;
    else if(sds_size < 2048)
        return 2048;
    else if(sds_size < 2304)
        return 2304;
    else if(sds_size < 2560)
        return 2560;



}

long estimate_2(int key_size,int value_size,long num)
{
    long bucket_num;
    long result;

    int dictEntry_size = 16;
    int redisObject_size = 16;

    int sds_key_size;
    int sds_value_size;

    sds_key_size = key_size + 9;
    sds_value_size = value_size +9;

    bucket_num = (int)pow(2,1.0*(floor(log(num)/log(2))+1));

    printf("bucket: %d\n",bucket_num);

    result = num * (dictEntry_size + redisObject_size + sds_key_size + sds_value_size) + bucket_num * 4;

    printf("result = %ld\n",result);

}


long estimate(int key_size,int value_size,long num)
{
    long bucket_num;
    long result;

    int dictEntry_size = 16;
    int redisObject_size = 16;

    int sds_key_size;
    int sds_value_size;

    sds_key_size = key_size + 9;
    sds_value_size = value_size +9;

    sds_key_size = get_exact_sds_size(sds_key_size);
    sds_value_size = get_exact_sds_size(sds_value_size);


    bucket_num = (int)pow(2,1.0*(floor(log(num)/log(2))+1));

    //printf("bucket: %d\n",bucket_num);

    result = num * (dictEntry_size + redisObject_size + sds_key_size + sds_value_size) + bucket_num * 4;

    printf("result = %ld Byte\n",result);
    printf("result = %.2f MB\n",result*1.0/(1024*1024));

}


int main(int argc,char* argv[]){

    int key_size;
    int value_size;
    int num;

    if(argc != 4){

        printf("usage: estimate key_size value_size num\n\t example: ./estimate 10 12 1000\n");
        exit(1);
    }

    key_size = atoi(argv[1]);
    value_size = atoi(argv[2]);
    num = atoi(argv[3]);

    estimate(key_size,value_size,num);

}
                                        
