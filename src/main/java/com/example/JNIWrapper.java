/* File : JniWrapper.java */
package com.example;
 
public class JniWrapper {
    final private static String LIB_NAME = "jnilibrary";
    static
    {
        System.loadLibrary( LIB_NAME);
    }
 
 
    public native String getString();
}