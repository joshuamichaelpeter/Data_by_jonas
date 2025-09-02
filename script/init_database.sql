use master;
Go
-- drop and recreate a database "data_warehouse"
if exist (select 1 from sys.database where name = "data_warehouse")
begin 
  alter database data_warehouse SET single_user with rollback immediate;
  drop database data_warehouse
end;

Go
---create database "data_warehouse"
create database data_warehouse;

Go
use data_warehouse

Go
---create schema
create schema bronze;

Go
create schema silver;

Go
create schema Gold;
