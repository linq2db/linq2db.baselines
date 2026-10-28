-- SqlServer.2005
DECLARE @dash VarChar(50) -- AnsiString
SET     @dash = N'-'

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[StringTypesTable] [a],
	[StringTypesTable] [b]
WHERE
	[b].[VarCharColumn] = Replace([a].[CharColumn], '?', @dash) OR
	[b].[VarCharColumn] IS NULL AND [a].[CharColumn] IS NULL

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

