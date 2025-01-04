SELECT * FROM DimProduct -- base para visualiza��o
-- Quantos produtos vendemos na empresa?
SELECT COUNT(*) FROM DimProduct

--Qual valor do produto mais caro?
SELECT max(unitprice) FROM dimproduct

--Qual a m�dia dos pre�os dos produtos?
SELECT 
round(avg(unitprice), 2) 
FROM dimproduct

--Quantas marcas temos na empresa?
SELECT 
count(distinct(brandname))
from dimproduct