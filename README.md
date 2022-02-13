# DBM01 Pubs solutions

![Logo de Team](https://github.com/ana-polo/DBM01-pubs-sol/blob/main/DBM.gif "Team logo")

## Table of Contents

1. General Info.
2. Technologies.
3. Collaboration.
4. Problem definition.

    1. DDL.

&nbsp;

### 1. General Info

***

Training exercise of design and management of databases carried out in the field of Database Management in the Higher Vocational training Degree in Management of Computer Network Systems.

&nbsp;

### 2. Technologies

***

*MySQL* Version 8.0

- **SQL-DDL**: Data Definition Language.

&nbsp;

### 3. Collaboration

***

- *Haplo35.*
- *ErnestoPGH.*
- *IrvingVqz.*

&nbsp;

### 4. Problem definition

***

#### i. DDL

***

📝 **TO DO**

    1. Save all the orders in a file named DDL_pubs.sql in the DBM01-SQL directory.

&nbsp;

👀 **Remember to not forget!**

- Choose the appropriate data type for each record.
- All table **must have one, and only one**, PRIMARY KEY.
- Properly format and document the code.

&nbsp;

##### a. DDL CREATE

***

📝 **TO DO**

    1. Create a new database called pubs with the following tables in the new database.

&nbsp;

<details>
    <summary>CLICK ME TO SEE THE TABLES DEFINITION</summary>

&nbsp;

##### PUBS

    - id_pub IDENTIFIER. 
    - pub_name 
    - address 
    - cif
    - first_day
    - time_open
    - post_code 
    - town
  
##### PUB_OWNWER  

    - id_nif IDENTIFIER.
    - owner_name
    - address
    - pub

##### EMPLOYER

    - id_nif IDENTIFIER.
    - employer_name
    - address

##### TOWN

    - id_town IDENTIFIER.
    - name

##### PRODUCT  

    - id_product IDENTIFIER.
    - stock      
    - price 
    - fk_id_pub

##### PUB_EMPLOYER  

    - fk_id_pub IDENTIFIER.       
    - id_employer IDENTIFIER.
    - role

</details>

&nbsp;
&nbsp;

##### b. DDL ALTER

***

📝 **TO DO**

    1. After the CREATES, updating the tables to create the foreign key constrains.
