system.filename: =debug OR ~>.aps OR ~>.ncb OR ~>.sln OR ~>.suo OR ~>.vcproj OR ~>.user OR ~>.opt OR ~>.sup OR ~>.plg
system.filename := ~>.ppt
system.filename := _glc_log OR ~>.gptf OR ~>.gpsf
system.filename: ~>.sln OR ~>.suo OR ~>.user OR ~>.vcproj
system.filename: ~>.suo OR ~>.user OR ~>.vcproj
system.filename: =debug OR _glc_log OR ~>.aps OR ~>.ncb OR ~>.suo OR ~>.user OR ~>.opt OR ~>.sup OR ~>.plg OR ~>.ilk OR ~>.exe
system.filename: =obj OR bin OR ~>.map OR ~>.suo OR ~>.user OR ~>.js
system.filename: =debug OR ~>.aps OR ~>.ncb OR ~>.suo OR ~>.user OR ~>.opt OR ~>.sup OR ~>.plg


system.filename: =release OR debug OR _glc_log OR ~>.aps OR ~>.ncb OR ~>.suo OR ~>.user OR ~>.opt OR ~>.sup OR ~>.plg OR ~>.ilk OR ~>.exe OR ~>.gptf OR ~>.gpsf OR ~>.gtda OR ~>.gtdm OR ~>.gp OR ~>.gtds OR ~>.lib OR ~>.7z OR ~>.zip ~!json_debug ~!dstrmbase ~!skydome ~!c_debug.c
system.filename: =.settings OR bin OR libs OR obj OR assets OR res OR gen OR ~>.classpath OR ~>.project OR ic_launcher-web.png OR proguard-project.txt OR project.properties  ~!json ~!resource ~!_res ~!.h  ~!.c


find . -type f \( -name \*.cpp -o -name \*.h \) ! -name pugixml.cpp -exec cat {} + | wc -l

adb shell screenrecord --size 640x360 --bit-rate 2000000 --time-limit 30 /sdcard/gpackexam.mp4




전산학과에서의 공부내용이 가장 중요합니다.
특히 아래 내용만큼은 매우 자세하게 숙달하셔야 합니다.

C++(1학년): try-catch,template,다형성
데이터구조론(2학년): tree, hash, sort
데이터베이스(3학년): 제2정규화, stored procedure
운영체제론(3학년): Operating System Concepts (이른바 공룡책)의 "프로세스" 챕터
컴퓨터네트워크(3학년): OSI 3-4 level, ARQ 알고리즘
컴파일러(4학년): BNF grammar
정보보호(4학년): RSA, AES, DES

