SELECT * FROM DimStore
SELECT* FROM DimGeography
-- select *
-- from tabela_esquerda
--left join tabela_direita on tabela_esqueda.coluna = tabela_direita.coluna

create view vwLojas as
select 
lj.StoreKey,
lj.StoreName,
lj.[Status],
lj.StoreType,
loc.CityName,
loc.RegionCountryName,
loc.StateProvinceName,
LOC.ContinentName

FROM DimStore lj -- renomeando tabela store
LEFT JOIN
DimGeography loc -- renomeando tabela geography--
on lj.GeographyKey=loc.GeographyKey