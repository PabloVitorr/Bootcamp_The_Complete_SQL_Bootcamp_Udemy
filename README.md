# **Repository for The Complete SQL Bootcamp Go From Zero To Hero**

![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

<br/>

## **Preparing the environment**

- ### **PostgreSQL Installation**

  - Add the PostgreSQL repository to the sources.list file:
    ```bash
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
    ```
  
  - Download the PostgreSQL signing key and add it to the system:
    ```bash
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    ```
  
  - Update the list of available packages:
    ```bash
    sudo apt-get update
    ```
  
  - Install the desired version of PostgreSQL:
    ```sql
    sudo apt-get -y install postgresql
    ```

<br/>

- ### **pgAdmin4 installation**

  - Install curl:
    ```bash
    sudo apt install curl
    ```
  
  - Install the public key to the repository:
    ```bash
    curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
    ```

  - Create the repository configuration file:
    ```bash
    sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
    ```

  - Install for Desktop and Web modes:
    ```bash
    sudo apt install pgadmin4
    ```

  - After installing PostgreSQL and pgAdmin4, simply perform the initial user and connection configurations as desired.

<br/>

## **Challenges**

- [**Challenges Section 2 - SQL Statement Fundamentals**](./documentation_challenges/challenges_section_2.md) 
- [**Challenges Section 3 - GROUP BY Statements**](./documentation_challenges/challenges_section_3.md) 
- [**Assessment Test 1 Section 4**](./documentation_challenges/assessment_test_1_section_4.md) 
- [**Challenges Section 5 - JOINS**](./documentation_challenges/challenges_section_5.md)
- [**Challenges Section 6 - Advanced SQL Commands**](./documentation_challenges/challenges_section_6.md)
- [**Assessment Test 2 Section 7**](./documentation_challenges/assessment_test_2_section_7.md)
- [**Assessment Test 3 Section 9**](./documentation_challenges/assessment_test_3_section_9.md.md)
- [**Challenges Section 10 - Conditional Expressions and Procedures**](./documentation_challenges/challenges_section_10.md)

<br/>

 :pushpin: [**General Content**](./general_scripts/)
