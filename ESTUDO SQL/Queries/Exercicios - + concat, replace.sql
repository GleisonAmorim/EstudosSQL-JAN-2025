------------------------------------------------------EXERC�CIOS---------------------------------------------------------

--1) Crie uma consulta para retornar a tabela de Funcion�rios (DimEmployee)
select * from DimEmployee

--2) Selecione apenas as colunas: C�digoFuncionario, Nome, Sobrenome, T�tulo, G�nero, Nome do Departamento
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee

--3) Filtre apenas os funcion�rios do G�nero Masculino
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee
where gender = 'm'

--4) Filtre apenas os homens que s�o Gerentes Regionais (�Sales Region Manager�)
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee
where gender = 'm'

--5) Filtre apenas os homens que s�o Gerentes Regionais (�Sales Region Manager�) 
--ou Gerentes de Estado �Sales State Manager�)
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee
where gender = 'm'
and Title = 'Sales Region Manager' 

--6) Filtre apenas os homens que s�o Gerentes Regionais (�Sales Region Manager�) 
--ou Gerentes de Estado (�Sales State Manager�) que s�o da �rea doDepartamento de Produ��o (�Production�)
SELECT 
    EmployeeKey, -- Coluna
    
    CONCAT(Firstname, ' ', Lastname) AS 'NomeCompleto', 
    -- Concatena o primeiro nome e o sobrenome em uma �nica coluna chamada 'NomeCompleto'.
    -- O uso de aspas simples ao nomear colunas pode ser substitu�do por aspas duplas ou colchetes (dependendo do SGBD) para evitar poss�veis conflitos.

    Title, -- Coluan

    REPLACE(
        REPLACE(
            Gender, 
            'M', 'Masculino'
        ), 
        'F', 'Feminino'
    ) AS 'Genero', 
    -- Substitui os c�digos 'M' e 'F' pelos valores descritivos 'Masculino' e 'Feminino'.
    -- Duas chamadas aninhadas � fun��o REPLACE s�o usadas para lidar com ambos os valores.

    DepartmentName -- Coluna

FROM DimEmployee -- Origem dos dados, Tabela


--7) Filtre apenas os homens que s�o Gerentes Regionais (�Sales Region Manager�)
--ou Gerentes de Estado (�Sales State Manager�) que s�o da �rea do
--Departamento de Produ��o (�Production�) ou do departamento de Marketin

SELECT 
    EmployeeKey, -- Coluna
    
    CONCAT(Firstname, ' ', Lastname) AS 'NomeCompleto', 
    -- Concatena o primeiro nome e o sobrenome em uma �nica coluna chamada 'NomeCompleto'.
    -- O uso de aspas simples ao nomear colunas pode ser substitu�do por aspas duplas ou colchetes (dependendo do SGBD) para evitar poss�veis conflitos.

    Title, -- Coluan

    REPLACE(
        REPLACE(
            Gender, 
            'M', 'Masculino'
        ), 
        'F', 'Feminino'
    ) AS 'Genero', 
    -- Substitui os c�digos 'M' e 'F' pelos valores descritivos 'Masculino' e 'Feminino'.
    -- Duas chamadas aninhadas � fun��o REPLACE s�o usadas para lidar com ambos os valores.

    DepartmentName -- Coluna

FROM DimEmployee -- Origem dos dados, Tabela

WHERE 
    (Title = 'Sales Region Manager' OR Title = 'Sales State Manager') 
    -- Filtra os registros para incluir apenas funcion�rios que ocupam os cargos de "Sales Region Manager" ou "Sales State Manager".

    AND (DepartmentName = 'Marketing' OR DepartmentName = 'Production') 
    -- Inclui apenas funcion�rios que trabalham nos departamentos "Marketing" ou "Production".
