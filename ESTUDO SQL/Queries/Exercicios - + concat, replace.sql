------------------------------------------------------EXERCÍCIOS---------------------------------------------------------

--1) Crie uma consulta para retornar a tabela de Funcionários (DimEmployee)
select * from DimEmployee

--2) Selecione apenas as colunas: CódigoFuncionario, Nome, Sobrenome, Título, Gênero, Nome do Departamento
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee

--3) Filtre apenas os funcionários do Gênero Masculino
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee
where gender = 'm'

--4) Filtre apenas os homens que são Gerentes Regionais (“Sales Region Manager”)
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee
where gender = 'm'

--5) Filtre apenas os homens que são Gerentes Regionais (“Sales Region Manager”) 
--ou Gerentes de Estado “Sales State Manager”)
select EmployeeKey, FirstName, LastName, Title, Gender, DepartmentName
from DimEmployee
where gender = 'm'
and Title = 'Sales Region Manager' 

--6) Filtre apenas os homens que são Gerentes Regionais (“Sales Region Manager”) 
--ou Gerentes de Estado (“Sales State Manager”) que são da área doDepartamento de Produção (“Production”)
SELECT 
    EmployeeKey, -- Coluna
    
    CONCAT(Firstname, ' ', Lastname) AS 'NomeCompleto', 
    -- Concatena o primeiro nome e o sobrenome em uma única coluna chamada 'NomeCompleto'.
    -- O uso de aspas simples ao nomear colunas pode ser substituído por aspas duplas ou colchetes (dependendo do SGBD) para evitar possíveis conflitos.

    Title, -- Coluan

    REPLACE(
        REPLACE(
            Gender, 
            'M', 'Masculino'
        ), 
        'F', 'Feminino'
    ) AS 'Genero', 
    -- Substitui os códigos 'M' e 'F' pelos valores descritivos 'Masculino' e 'Feminino'.
    -- Duas chamadas aninhadas à função REPLACE são usadas para lidar com ambos os valores.

    DepartmentName -- Coluna

FROM DimEmployee -- Origem dos dados, Tabela


--7) Filtre apenas os homens que são Gerentes Regionais (“Sales Region Manager”)
--ou Gerentes de Estado (“Sales State Manager”) que são da área do
--Departamento de Produção (“Production”) ou do departamento de Marketin

SELECT 
    EmployeeKey, -- Coluna
    
    CONCAT(Firstname, ' ', Lastname) AS 'NomeCompleto', 
    -- Concatena o primeiro nome e o sobrenome em uma única coluna chamada 'NomeCompleto'.
    -- O uso de aspas simples ao nomear colunas pode ser substituído por aspas duplas ou colchetes (dependendo do SGBD) para evitar possíveis conflitos.

    Title, -- Coluan

    REPLACE(
        REPLACE(
            Gender, 
            'M', 'Masculino'
        ), 
        'F', 'Feminino'
    ) AS 'Genero', 
    -- Substitui os códigos 'M' e 'F' pelos valores descritivos 'Masculino' e 'Feminino'.
    -- Duas chamadas aninhadas à função REPLACE são usadas para lidar com ambos os valores.

    DepartmentName -- Coluna

FROM DimEmployee -- Origem dos dados, Tabela

WHERE 
    (Title = 'Sales Region Manager' OR Title = 'Sales State Manager') 
    -- Filtra os registros para incluir apenas funcionários que ocupam os cargos de "Sales Region Manager" ou "Sales State Manager".

    AND (DepartmentName = 'Marketing' OR DepartmentName = 'Production') 
    -- Inclui apenas funcionários que trabalham nos departamentos "Marketing" ou "Production".
