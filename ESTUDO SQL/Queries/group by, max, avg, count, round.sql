SELECT * FROM DIMPRODUCT

--Preço mais caro por marca
SELECT brandname as 'NomeMarca',
max(unitprice) as 'MaiorPreco'
FROM DIMPRODUCT
group by brandname

--Exiba todas as marcas e todas as classes
select 
brandname, 
classname
FROM DIMPRODUCT
group by brandname,classname

--Quantos produtos tem em cada marca e em cada classe

select 
brandname, 
classname,
count(brandname) as 'Qtdprod'
FROM DIMPRODUCT
group by brandname,classname

--Calcule a média de cada marca

select
brandname,
classname,
round(avg(unitprice),2) as 'mediaprod'
from dimproduct
group by brandname, classname