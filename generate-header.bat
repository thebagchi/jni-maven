:: Generate Header File For JniWrapper
echo off
set cwd=%~dp0
 
set CURR_DIR=%~dp0
echo '### Compiling JniWrapper.java ###'
cd "src\main\java"
cd "com\example"
"%JAVA_HOME%\bin\javac" JniWrapper.java
 
echo '### Generating JNI Header File For JniWrapper.java ###'
cd %CURR_DIR%
cd "src\main\java"
"%JAVA_HOME%\bin\javah" -verbose -jni -d ..\native\include com.example.JniWrapper
 
cd %CURR_DIR%