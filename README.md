# Mimic SQL Host Variables
In IRIS host variables just exist within embedded SQL    
>  You can supply host variables for Embedded SQL queries only.   
>  Related examples are included in the available documentation      

This is a workaround if you don't / can't use embedded SQL.    
The basic idea is to use PPG to mimic host variables.   
A major reason to use PPG is the fact that they get deleted   
automatically at the end of process.   
Another idea is to avoid conflicts with local variable arrays    
and local versus global variable scope.   
In addition there is no need for an clean up activity.

In fact it is a set of 3 SQL Methods:

- HDEC to mimic SQL DECLARE @var and SQL SET @var   
- HGETV and HGETI  to return the variable value as VARCHAR or INT   
As a side feature NULL is returned if the variable wasn't set of
declared before if required returning any other data type is rather easy   
- HDEL is provided if there raises the unlikely need to delete a host variable
  
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
$ git clone https://github.com/rcemper/Mimic-SQL-Host-Variables.git
```
To build and start the container run:
```
$ docker compose up -d && docker compose logs -f
```
To open IRIS Terminal do:
```
$ docker-compose exec iris iris session iris
USER>
```
To access IRIS System Management Portal
```
http://localhost:42773/csp/sys/UtilHome.csp
```
### How to use it
