-- SqlServer.2014.MS SqlServer.2014
DECLARE @bound VarChar(50) -- AnsiString
SET     @bound = N'A'

SELECT
	[t].[Id]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[VarCharColumn] > @bound

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

