--SELECT ClassName, ClassID FROM DimProduct	
--WHERE ClassName = 'deluxe'

--SELECT * FROM DimProduct	
--WHERE BrandName = 'Litware'
-----------------------------------------------------------------------
SELECT -- 1 SELECT
ProductName as 'NomeProduto',
BrandName as 'EmpresaFabricante',
ClassID as 'IDClasse',
ClassName as 'Classificacao'

FROM DimProduct -- 2 FROM

where (ClassName = 'regular' or ClassName='deluxe')  --3 WHERE

AND

BrandName = 'contoso'


-- filtrar as informações da mesma coluna utiliza-se OR filtrar informações de colunas diferentes utiliza-se AND

