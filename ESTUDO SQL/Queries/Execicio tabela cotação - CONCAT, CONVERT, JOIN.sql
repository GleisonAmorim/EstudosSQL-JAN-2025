create view vwCotacao as 
select
FactExchangeRate.ExchangeRateKey,
FactExchangeRate.CurrencyKey,
convert(varchar(10),FactExchangeRate.DateKey,103) as 'DateKey',
FactExchangeRate.AverageRate,
DimCurrency.CurrencyName,
concat(convert(varchar(10),FactExchangeRate.datekey,103), FactExchangeRate.CurrencyKey) as 'DateCurrencyKey'

from FactExchangeRate

left join DimCurrency on FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey


