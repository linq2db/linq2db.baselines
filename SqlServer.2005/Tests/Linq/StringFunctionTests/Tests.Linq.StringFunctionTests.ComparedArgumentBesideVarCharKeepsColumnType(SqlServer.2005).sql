-- SqlServer.2005
DECLARE @bound VarChar(50) -- AnsiString
SET     @bound = N'A'

SELECT
	[t].[Id]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[VarCharColumn] > @bound

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

