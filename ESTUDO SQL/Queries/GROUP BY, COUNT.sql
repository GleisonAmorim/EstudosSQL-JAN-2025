SELECT * FROM DIMPRODUCT
--Exiba as marcas da empresa utilizando GROUP BY
SELECT
    BRANDNAME, -- Nome da marca do produto. O SQL não diferencia maiúsculas e minúsculas por padrão para colunas, dependendo do SGBD.
    
    COUNT(brandname) AS 'QTDPROD' 
    -- Conta o número de produtos associados a cada marca e retorna o resultado com o alias 'QTDPROD'.

FROM DIMPRODUCT -- Tabela de produtos, geralmente parte de um modelo dimensional (data warehouse).

GROUP BY BRANDNAME 
-- Agrupa os registros pela coluna BRANDNAME. Cada valor único de BRANDNAME terá uma contagem associada.
