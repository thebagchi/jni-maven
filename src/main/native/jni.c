#include "com_example_JNIWrapper.h"
#include <stdio.h>
 
#define DEFAULT_RET "HELLO WORLD !!!"
 
JNIEXPORT jstring JNICALL Java_com_example_JNIWrapper_getString
  (JNIEnv *env, jobject thiz) {
    char* ret = DEFAULT_RET;
    return (*env)->NewStringUTF(env, ret);
}