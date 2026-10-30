-- SqlServer.2014
DECLARE @pattern NVarChar(4000) -- String
SET     @pattern = N'%Ж%'

SELECT
	[t].[Id]
FROM
	[StringTypesTable] [t]
WHERE
	CAST([t].[VarCharColumn] AS NVarChar(50)) LIKE @pattern

