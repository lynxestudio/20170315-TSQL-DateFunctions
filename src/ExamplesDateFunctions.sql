
--Dateadd example
Select deliverydate
,dateadd(dy,30,deliverydate) 'New deliverydate'
from orders

--Datediff example
Select 
deliverydate,
purchasedate,
datediff(hh,purchasedate,deliverydate) 'Hours of transportation'
from orders

--Datename example
Select 
deliverydate,
datename(dw,deliverydate) 'Day of the week',
purchasedate,
datename(mm,purchasedate) 'Month of the year'
from orders

--Datepart example
Select 
deliverydate,
datepart(dy,deliverydate) 'day of the year'
from  orders

--Getdate example
Select getdate() as 'current date'
