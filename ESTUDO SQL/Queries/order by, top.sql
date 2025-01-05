select * 
from DimProduct

-- order by e top

-- exiba a tabela de produtos
-- nome marca preço
-- ordene do mais caro  para o mais barato (DESC)

select
ProductName,
BrandName,
UnitPrice

from DimProduct

order by UnitPrice desc

-- exiba os 10 produtos mais baratos (TOP)

select top 10
ProductName,
BrandName,
UnitPrice

from DimProduct

order by UnitPrice asc

--------------------------------------------------------Exercício--------------------------------------------------------

--selecionar as top 5 lojas ativas com maior quantidade de funcionários
--apenas coluna de nome da loja status e quantidade funcionários

select * --base
from DimStore

------------

select top 5
StoreName,
EmployeeCount,
[status]

from DimStore 
where status = 'on'

order by EmployeeCount desc