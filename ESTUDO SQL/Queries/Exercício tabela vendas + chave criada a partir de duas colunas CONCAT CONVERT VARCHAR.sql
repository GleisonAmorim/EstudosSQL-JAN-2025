create view vwSales as 
SELECT
saleskey,
convert(varchar(10),DateKey,103) as 'Datekey',
concat(convert(varchar(10),datekey,103), CurrencyKey) as 'DatecurrencyKey',
storekey,
ProductKey,
CurrencyKey,
SalesQuantity,
ReturnAmount,
ReturnQuantity,
DiscountAmount,
DiscountQuantity,
PromotionKey,
SalesAmount,
TotalCost,
UnitCost,
UnitPrice

FROM FactSales