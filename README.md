# DBM01-pubs-sol

![Logo de Team](https://github.com/ana-polo/DBM01-pubs/blob/main/DBM.gif "Team logo")

## Table of Contents

1. [General Info.](#1.-General-Info)
2. [Technologies.](#2.-Technologies)
3. [Collaboration.](#3.-Collaboration)
4. [Problem definition.](#4.-Problem-definition)
    1. [Creation of the tables of the DB.](# i.-DDL)
    2. [Updating the tables to create the foreign key constrains.](#ii.-DML)

&nbsp;

### 1. General Info

***
*Training exercise of design and management of databases carried out in the field of Database Management in the Higher Vocational training Degree in Management of Computer Network Systems.*

&nbsp;

### 2. Technologies

***
*MySQL* Version 8.0

- *SQL-DDL*: Data Definition Language.

&nbsp;

### 3. Collaboration

***
Students:

- *Haplo35.*
- *ErnestoPGH.*
- *IrvingVqz.*

&nbsp;

### 4. Problem definition

***

#### i. DDL

***

:pencil: **TO DO**

1. Create a new database called pubs with the following tables in the new database
2. Save all these orders in the file whose name is **DDL_pubs.sql** inside the **DBM01-SQL** directory.

&nbsp;

👀 **Remember to not forget!**

- Choose the appropriate data type for each record.
- All table **must have one, and only one**, PRIMARY KEY.
- Properly format and document the code.

&nbsp;
<details>
    <summary>CLICK ME TO SEE THE TABLES DEFINITION</summary>

<br />

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

<<<<<<< HEAD
#### ii. DML

***
=======
#### ii. Updating the tables to create the foreign key constrains
****
>>>>>>> 949706cc612af790b72c251c2c9d0681e0e3d500

:pencil: **TO DO**

1. Updating the tables to create the foreign key constrains
2. Save all these orders in the file whose name is **DML_pubs.sql** inside the **DBM01-SQL** directory.

👀 **Remember to not forget!**

- Properly format and document the code.
