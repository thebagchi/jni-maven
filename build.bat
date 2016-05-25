@echo off

::https://maven.apache.org/guides/getting-started/index.html


set "JAVA_HOME=%ProgramFiles%\Java\jdk1.7.0_79"
echo "Using JAVA_HOME %JAVA_HOME%"

SET "ORIGINAL_PATH=%PATH%"
set "PATH=%PATH%;C:\SysGCC_BAK\MinGW64\bin;%JAVA_HOME%\bin"

call mvnw --version

:: validate, initialize, generate-sources, process-sources, 
:: generate-resources, process-resources, compile, process-classes, 
:: generate-test-sources, process-test-sources, generate-test-resources, 
:: process-test-resources, test-compile, process-test-classes, 
:: test, prepare-package, package, pre-integration-test, integration-test, 
:: post-integration-test, verify, install, deploy, pre-clean, 
:: clean, post-clean, pre-site, site, post-site, site-deploy

echo "Building ..."
call mvnw -Dmaven.repo.local=.\.repository clean   -P windows -DskipTests 
call mvnw -Dmaven.repo.local=.\.repository compile -P windows -DskipTests 
call mvnw -Dmaven.repo.local=.\.repository package -P windows -DskipTests 
call mvnw -Dmaven.repo.local=.\.repository install -P windows -DskipTests

SET "PATH=%ORIGINAL_PATH%"