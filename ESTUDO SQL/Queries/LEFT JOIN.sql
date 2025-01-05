------exemplo join-----
-- select *
-- from tabela_esquerda
--left join tabela_direita on tabela_esqueda.coluna = tabela_direita.coluna


-- Total de vendas por loja
SELECT TOP 100 
    DimStore.StoreName,
    DimStore.StorePhone,
    SUM(FactSales.SalesQuantity) AS TotalSalesQuantity,  -- Soma da quantidade vendida
    AVG(FactSales.UnitPrice) AS AverageUnitPrice          -- Média do preço unitário
FROM 
    FactSales
LEFT JOIN 
    DimProduct ON FactSales.ProductKey = DimProduct.ProductKey
LEFT JOIN 
    DimStore ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY 
    DimStore.StoreName,
    DimStore.StorePhone
ORDER BY 
    TotalSalesQuantity DESC;  -- Ordenar pela quantidade de vendas




-- Exemplo com Produtos por Loja:

SELECT TOP 100 
    DimStore.StoreName,
    DimStore.StorePhone,
    DimProduct.ProductName,
    SUM(FactSales.SalesQuantity) AS TotalSalesQuantity,  -- Soma da quantidade vendida
    AVG(FactSales.UnitPrice) AS AverageUnitPrice          -- Média do preço unitário
FROM 
    FactSales
LEFT JOIN 
    DimProduct ON FactSales.ProductKey = DimProduct.ProductKey
LEFT JOIN 
    DimStore ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY 
    DimStore.StoreName,
    DimStore.StorePhone,
    DimProduct.ProductName
ORDER BY 
    TotalSalesQuantity DESC;  -- Ordenar pela quantidade de vendas