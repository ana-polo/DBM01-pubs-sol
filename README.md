# DBM01-pubs

![Logo de Team](https://github.com/ana-polo/DBM01-pubs/blob/main/DBM.gif "Team logo")


<a name="top"></a>
## Table of Contents
1. [General Info.](#general-info)
2. [Technologies.](#technologies)
3. [Collaboration.](#collaboration)
4. [Problem definition.](#problem-definition)
    1. [Creation of the tables of the DB.](#create)
    2. [Updating the tables to create the foreign key constrains.](#fk-constraint)
	

<a name="general-info"></a>
### 1. General Info
***
**Status:** DONE.
####
*Training exercise of design and management of databases carried out in the field of Database Management in the Higher Vocational training Degree in Management of Computer Network Systems.*

<a name="technologies"></a>
### 2. Technologies
***
A list of technologies used within the project:
*MySQL: Version 8.0 
    - SQL-DDL: Data Definition Language* 


[Top](#top)
<a name="collaboration"></a>
### 3. Collaboration
***
Students:
*Haplo35.* 
*ErnestoPGH.* 
*IrvingVqz.*


[Top](#top)
<a name="problem-definition"></a>
### 4. Problem definition
***
<a name="create"></a>
#### i. Create a new database called pubs with the following tables in the new database:
****


<details>
    <summary>CLICK ME TO SEE THE TABLES DEFINITION</summary>

	
    *PUBS
        - id_pub IDENTIFIER. 
        - pub_name 
        - address 
        - cif
        - first_day
        - time_open
        - post_code 
        - town
  
    
    *PUB_OWNWER  
        - id_nif IDENTIFIER.
        - owner_name
        - address
        - pub
	
  
    *EMPLOYER 
        - id_nif IDENTIFIER.
        - employer_name
        - address
	
  
    *TOWN
        - id_town IDENTIFIER.
        - name
	
  
    *PRODUCT  
        - id_product IDENTIFIER.
        - stock      
        - price 
        - fk_id_pub
  
  
    *PUB_EMPLOYER  
        - fk_id_pub IDENTIFIER.       
        - id_employer IDENTIFIER.
        - role
</details>


**👀 Remember to not forget!** 
- Choose the appropriate data type for each record. 
- All table must have one, and only one, PRIMARY KEY.		 
- Properly format and document the code.
#
#
<a name="fk-constraint"></a>
#### ii. Updating the tables to create the foreign key constrains.
****
 
**👀 Remember to not forget!** 
- Properly format and document the code.		 
 
