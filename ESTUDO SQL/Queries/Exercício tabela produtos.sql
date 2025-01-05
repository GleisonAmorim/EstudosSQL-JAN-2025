create view vwProdutos as
select
DimProduct.ProductKey,
DimProduct.ProductName,
DimProduct.BrandName,
DimProduct.UnitCost,
DimProduct.UnitPrice,	
DimProductCategory.ProductCategoryName,
DimProductSubcategory.ProductSubcategoryName

from DimProduct
--left join tabela_direita on tabela_esqueda.coluna = tabela_direita.coluna
left join
DimProductSubcategory on DimProduct.ProductSubcategorykey = DimProductSubcategory.ProductSubcategorykey
left join
DimProductCategory on DimProductSubcategory.Productcategorykey = DimProductcategory.Productcategorykey