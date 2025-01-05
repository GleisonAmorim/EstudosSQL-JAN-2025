----Exercício join tabelas cotações

select * from DimCurrency -- esquerda
select * from factexchangerate -- direita

select
FactExchangeRate.ExchangeRateKey,
dimcurrency.CurrencyKey,
FactExchangeRate.DateKey,
FactExchangeRate.AverageRate,
dimcurrency.CurrencyName


from dimcurrency

left join
FactExchangeRate on FactExchangeRate.CurrencyKey = DimCurrency.currencykey
