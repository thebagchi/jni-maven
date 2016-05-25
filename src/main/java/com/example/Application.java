/* File : Application.java */
package com.example;
 
public class Application{
     
    public static void main( String[] args ) {
        JniWrapper jni = new JniWrapper();
        System.out.println(jni.getString());
    }
}