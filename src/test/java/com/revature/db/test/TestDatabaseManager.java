package com.revature.db.test;
import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.revature.dao.DatabaseManager;

import java.sql.Connection;
import java.util.jar.JarEntry;

public class TestDatabaseManager {
	DatabaseManager db;
	Connection connection;
    // This runs before any tests run. You might specify or start up different resources in this section
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
    }

    // This runs after all tests have run. You might close your resources here that were being used
    // For example, FileReader
    @AfterClass
    public static void tearDownAfterClass() throws Exception {
    }

    // This will run before every test
    @Before
    public void setUp() throws Exception {
    	db = new DatabaseManager();
    }

    // This will run after every test
    @After
    public void tearDown() throws Exception {
    	connection.close();
    }

    // There are two different types of tests (as a generalization)
    // We have positive tests // Where we are basically testing for intended usage of our logic
    // and we have negative tests // where we are testing for unintended use
    @Test
    public void dbConnectionSuccess(){
        assertTrue((connection = db.getLocalConnection("OutdoorApp", System.getenv("DB_Username"), System.getenv("DB_Password")))!= null);
    }
    


}
