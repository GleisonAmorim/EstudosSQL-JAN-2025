--select * from DimProduct

--pre�o m�dio da classe economica
select 
BrandName,
ClassName,
round(avg(unitprice),2) as 'precomedio'

from DimProduct
where ClassName = 'Economy'

GROUP BY 
    BrandName, ClassName

-- pre�o medio da marca contoso

select 
BrandName,
ClassName,
round(avg(unitprice),2) as 'precomedio'
from DimProduct
where classname = 'economy' and BrandName = 'Contoso'
GROUP BY 
    BrandName, ClassName
