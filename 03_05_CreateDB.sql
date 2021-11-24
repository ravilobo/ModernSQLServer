create database ReplAKS 
go 
use ReplAKS 
go 
if object_id('ReplType') is not null drop table ReplType
go 
create table ReplType(
ReplTypeID int identity(1,1)
,Type varchar(10)
)
go 
insert ReplType (Type) select 'Merge'
insert ReplType (Type) select 'Transactional'
insert ReplType (Type) select 'Snapshot'
go 
select * from ReplType