declare @mydateMax datetime
set @mydateMax = '12/12/54'
--prints 1954 instead of 2054
print @mydateMax
go
declare @mydateMin datetime
set @mydateMin = '11/11/49'
--prints 2049 instead of 1949
print @mydateMin

