SELECT * FROM DIMPRODUCT
--Exiba as marcas da empresa utilizando GROUP BY
SELECT
    BRANDNAME, -- Nome da marca do produto. O SQL n�o diferencia mai�sculas e min�sculas por padr�o para colunas, dependendo do SGBD.
    
    COUNT(brandname) AS 'QTDPROD' 
    -- Conta o n�mero de produtos associados a cada marca e retorna o resultado com o alias 'QTDPROD'.

FROM DIMPRODUCT -- Tabela de produtos, geralmente parte de um modelo dimensional (data warehouse).

GROUP BY BRANDNAME 
-- Agrupa os registros pela coluna BRANDNAME. Cada valor �nico de BRANDNAME ter� uma contagem associada.
