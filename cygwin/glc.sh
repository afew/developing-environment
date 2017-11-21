echo "Welcome !!! Environment Setting For Android. ----------------"
#
function replace_path_win_to_cygwin() {
  local mod_path=$1
  mod_path="${mod_path//'\'/'/'}"
  mod_path="${mod_path/'C:/'/'/cygdrive/c/'}"
  mod_path="${mod_path/'c:/'/'/cygdrive/c/'}"
  mod_path="${mod_path/'D:/'/'/cygdrive/d/'}"
  mod_path="${mod_path/'d:/'/'/cygdrive/d/'}"
  echo ""$mod_path
}

NDK_PATH_HOME=$(replace_path_win_to_cygwin $NDK_HOME)
AOS_PATH_JAVA=$(replace_path_win_to_cygwin $JAVA_HOME)/bin
AOS_PATH_JRE=$(replace_path_win_to_cygwin $JRE_HOME)/bin
AOS_PATH_ANT=$(replace_path_win_to_cygwin $ANT_HOME)/bin
AOS_PATH_ADT_PLATFORM=$(replace_path_win_to_cygwin $ANDROID_HOME)/platform-tools
AOS_PATH_ADT_TOOL=$(replace_path_win_to_cygwin $ANDROID_HOME)/tools

NDK_PATH_EABI=$NDK_PATH_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/windows-x86_64/bin
NDK_PATH_CLANG=$NDK_PATH_HOME/toolchains/llvm/prebuilt/windows-x86_64/bin
NDK_PATH_TOOLCHAIN=$NDK_PATH_HOME/toolchains

echo "NDK_HOME          : "$NDK_PATH_HOME
echo "JAVA              : "$AOS_PATH_JAVA
echo "JRE               : "$AOS_PATH_JRE
echo "ANT               : "$AOS_PATH_ANT
echo "ADT PLATFORM      : "$AOS_PATH_ADT_PLATFORM
echo "ADT PLATFORM TOOLS: "$AOS_PATH_ADT_TOOL
echo "NDK EABI          : "$NDK_PATH_EABI
echo "NDK CLANG         : "$NDK_PATH_CLANG
echo "NDK TOOLCHAIN     : "$NDK_PATH_TOOLCHAIN
echo "NDK ROOT          : "$NDK_PATH_HOME

AOS_BUILD_PATH=$AOS_PATH_JAVA
AOS_BUILD_PATH=$AOS_PATH_JRE:$AOS_BUILD_PATH
AOS_BUILD_PATH=$AOS_PATH_ANT:$AOS_BUILD_PATH
AOS_BUILD_PATH=$AOS_PATH_ADT_PLATFORM:$AOS_BUILD_PATH
AOS_BUILD_PATH=$AOS_PATH_ADT_TOOL:$AOS_BUILD_PATH
AOS_BUILD_PATH=$NDK_PATH_EABI:$AOS_BUILD_PATH
AOS_BUILD_PATH=$NDK_PATH_EABI:$NDK_PATH_CLANG
AOS_BUILD_PATH=$NDK_PATH_TOOLCHAIN:$AOS_BUILD_PATH
AOS_BUILD_PATH=$NDK_PATH_HOME:$AOS_BUILD_PATH

#echo "AOS BUILD PATH: "$AOS_BUILD_PATH

echo "-------------------------------------------------------------"

export PATH=$AOS_BUILD_PATH:$PATH
#
cd /cygdrive/e/_document/