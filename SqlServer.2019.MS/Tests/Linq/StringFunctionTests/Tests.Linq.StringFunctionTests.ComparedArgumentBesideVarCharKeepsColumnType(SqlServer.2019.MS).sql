-- SqlServer.2019.MS SqlServer.2019
DECLARE @bound VarChar(50) -- AnsiString
SET     @bound = N'A'

SELECT
	[t].[Id]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[VarCharColumn] > @bound

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

