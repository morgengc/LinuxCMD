@echo off

REM �鿴ƽ̨�˿������Ƿ��ظ���
REM ������У���һ��Ϊ�˿�ʹ�ô������ڶ���Ϊ�꣬������Ϊ�˿ں�
REM ��������£���һ�б���ȫΪ1
REM Chao.Gao@cisdi.com.cn
REM 2010.11.02

:: csd_info url | gawk -F "=" "{print $1:$2}" | gawk -F ":" "{print $3}" | gawk -F "/" "NF {print $1}" | uniq -c

:: csd_info url | gawk -F "[=:/]" "NR>2 {print $1,$6}" | uniq -f 1 -c

csd_info url | gawk -F "[=:/]" "NR>2 {print $6,$1}" | sort | uniq -c -w 5

