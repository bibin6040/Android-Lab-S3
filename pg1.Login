steps to make a new project
------------------------------------
step 1:open the file
step2:next go to new->new project
step 3: Take the ->Empty Views Activity->next
step 4: select the Name box and ->fill a name for the project

program 1
===================
Design a Login Form with username and password using LinearLayout and toast valid
credentials
============================
CODE:
activity_main.xml:
---------------------------
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/main"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".MainActivity">



    <EditText
        android:id="@+id/uname1"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Username"/>
    <EditText
        android:id="@+id/pass1"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Password"
        android:inputType="textPassword"/>
    <Button
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="login"
        android:onClick="Login"/>

</LinearLayout>

MainActivity.java:
-----------------------------------
package com.example.login;

import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;



public class MainActivity extends AppCompatActivity {
    private EditText unameEditText;
    private EditText passEditText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        unameEditText=findViewById(R.id.uname1);
        passEditText=findViewById(R.id.pass1);
        }
        public void Login(View view){
        String username=unameEditText.getText().toString();
        String password=passEditText.getText().toString();
        if(isValidCredentials(username,password)) {
            Toast.makeText(this, "login successfull", Toast.LENGTH_SHORT).show();
        }
        else
        {
            Toast.makeText(this,"invalid credentials",Toast.LENGTH_SHORT).show();
        }
    }
private boolean isValidCredentials(String username,String password){
    return username.equals("Anjala")&& password.equals("123");
    }

}

output
-----
photo is uploaded by the name pg1-login
