0.0很久以前写的BAT自动运行脚本，用于ZUCC南校区寝室同时内外网访问0.0 
怎么说呢，感觉写的还是比较渣，基本都是在造轮子，不过在不断改版本的过程中也在不断完善，
从第一个版本到最后一个版本变化还是挺大的。 
原理就是调用CMD命令中的route命令让10开头的IP地址都走内网的网关，没办法解决的就是寝室内网是DHCP自动分配（实现固定IP比较麻烦）， 无法实现程序永久有效，只能使用前开一次。 
虽说后面有些刷版本号的嫌疑>_<，但确实是在针对学校移动DNS劫持问题在不断解决。
打算以后用C++重新写一份，实现检查版本号自动更新什么的0.0，写的BAT加上EXE的壳基本被市面80%的杀软误报QAQ（大数字说的就是你）

版本说明： 
见程序内。