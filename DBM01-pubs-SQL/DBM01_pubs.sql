/*
    File: DBM01_pubs.sql                                      
    Purpose: DBM SQL DDL Exercice 01- Create a database about the pubs in a region. Using new rules for formatting code 
    Author: Ana Polo  Arozamena                                      
*/

/*--- First step:  We create the BD */

DROP DATABASE IF EXISTS dbm01_pubs;
CREATE DATABASE IF NOT EXISTS dbm01_pubs CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE dbm01_pubs; 


/* 
    Table: pub
    Description: Keeps the information that refers each pub 
*/

CREATE TABLE IF NOT EXISTS pub (
	
	/*--- Third step:  We create the columns */
	
    id_pub INT NOT NULL,
    pub_name VARCHAR( 30 ) NOT NULL,
    address VARCHAR( 50 ) NOT NULL, 
    cif CHAR( 9 ) NOT NULL,
    first_day DATE,
    time_open TIME,
    cp CHAR( 5 ) NOT NULL, 
    town INT,
    
    /*--- Fourth step: We create the constraints. Remenber that all tables must have a PRIMERY KEY */

	 CONSTRAINT pk_pubs PRIMARY KEY ( id_pub )
) ENGINE = InnoDB;


/* 
    Table: pub_owner
    Description: Keeps the information that refers to the owners of each pub 
*/
		
CREATE TABLE IF NOT EXISTS pub_owner (

	/*--- Third step:  We create the columns */

	id_nif  CHAR( 9 ) NOT NULL, 
	owner_name VARCHAR( 30 ) NOT NULL, 
	address VARCHAR( 50 ) NOT NULL,  
	fk_id_pub INT NOT NULL,
    
    /*--- Fourth step: We create the constraints. Remenber that all tables must have a PRIMERY KEY */

	 CONSTRAINT pk_pub_owner PRIMARY KEY ( id_nif )
) ENGINE = InnoDB;


/* 
    Table: employer
    Description: Keeps the information that refers to the employers who works in a pub 
*/
		
CREATE TABLE IF NOT EXISTS employer (
	
	/*--- Third step:  We create the columns */
	
	id_nif CHAR( 9 ) NOT NULL, 
	employer_name VARCHAR( 30 ) NOT NULL, 
	address VARCHAR( 50 ) NOT NULL,
    
    /*--- Fourth step: We create the constraints. Remenber that all tables must have a PRIMERY KEY */

	 CONSTRAINT pk_employer PRIMARY KEY ( id_nif )
) ENGINE = InnoDB;


/* 
    Table: town
    Description: Keeps the information that refers to the town where is place each pub 
*/
		
CREATE TABLE IF NOT EXISTS town (
	
	/*--- Third step:  We create the columns */
	
	id_town INT NOT NULL, 
	town_name VARCHAR( 20 ) NOT NULL,
    
    /*--- Fourth step: We create the constraints. Remenber that all tables must have a PRIMERY KEY */

	 CONSTRAINT pk_town PRIMARY KEY ( id_town )
) ENGINE = InnoDB;


/* 
    Table: products
    Description: Keeps the information that refers to the products there are each pub 
*/
		
CREATE TABLE IF NOT EXISTS products (

	/*--- Third step:  We create the columns */

	id_product SMALLINT NOT NULL, name VARCHAR(20) NOT NULL, 
	stock SMALLINT UNSIGNED NOT NULL, /* It can not be negative */  
	price DECIMAL( 5, 2 ) NOT NULL, 
	fk_id_pub INT NOT NULL,
    
    /*--- Fourth step: We create the constraints. Remenber that all tables must have a PRIMERY KEY */

	CONSTRAINT pk_product PRIMARY KEY ( id_product )    
) ENGINE = InnoDB; 


/* 
    Table: pub_employer
    Description: Keeps the information that refers to the stand of each employer in each pub. Could be an employer who works  for several pubs and his the stand in each one is different.  
*/

CREATE TABLE IF NOT EXISTS pub_employer (

	/*--- Third step:  We create the columns */

	fk_id_pub INT NOT NULL, 
	fk_id_employer CHAR( 9 ) NOT NULL, 
	role ENUM( 'waiter', 'cook', 'cleaner', 'public relations', 'cashier', 'warehouse manager', 'event organizer' ),
    
    /*--- Fourth step: We create the constraints. Remenber that all tables must have a PRIMERY KEY */

	CONSTRAINT pk_pub_employer PRIMARY KEY ( fk_id_pub, fk_id_employer )
) ENGINE = InnoDB;



/*--- Fith step: We update the tables for creating the FK constraints. */ 
 
ALTER TABLE pub_owner ADD 
    CONSTRAINT fk_pub__pub_ownwer FOREIGN KEY ( fk_id_pub ) 
        REFERENCES pub ( id_pub );
    
    
ALTER TABLE products ADD
    CONSTRAINT fk_pub__products FOREIGN KEY (fk_id_pub )
        REFERENCES pub ( id_pub );


ALTER TABLE pub_employer ADD
    CONSTRAINT	fk_pub__pub_employer FOREIGN KEY ( fk_id_pub )
        REFERENCES pub ( id_pub );
        
ALTER TABLE pub_employer ADD
    CONSTRAINT	fk_employer__pub_employer FOREIGN KEY ( fk_id_employer )  
        REFERENCES employer ( id_nif );
