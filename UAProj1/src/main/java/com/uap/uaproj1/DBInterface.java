package com.uap.uaproj1;

public class DBInterface
{
    public boolean connect()
    {
        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver ());
        return false;
    }
}
/*
* Note: url identifies the Data Source in Database.
* E.g String url = “jdbc:mysql://localhost/hb_student_tracker?user=root&password=StrongPassword1$”
*/