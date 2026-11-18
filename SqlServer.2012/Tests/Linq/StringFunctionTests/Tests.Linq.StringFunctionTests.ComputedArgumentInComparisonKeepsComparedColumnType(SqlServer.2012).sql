-- SqlServer.2012
DECLARE @dash VarChar(50) -- AnsiString
SET     @dash = N'-'

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[StringTypesTable] [a],
	[StringTypesTable] [b]
WHERE
	([b].[VarCharColumn] = Replace([a].[VarCharColumn], '?', @dash) OR [b].[VarCharColumn] IS NULL AND [a].[VarCharColumn] IS NULL) AND
	([b].[VarCharColumn] = IIF([a].[VarCharColumn] IS NULL OR LEN([a].[VarCharColumn] + N'.') >= 6, [a].[VarCharColumn], REPLICATE('0', 5 - (LEN([a].[VarCharColumn] + N'.') - 1)) + [a].[VarCharColumn]) OR [b].[VarCharColumn] IS NULL AND IIF([a].[VarCharColumn] IS NULL OR LEN([a].[VarCharColumn] + N'.') >= 6, [a].[VarCharColumn], REPLICATE('0', 5 - (LEN([a].[VarCharColumn] + N'.') - 1)) + [a].[VarCharColumn]) IS NULL)

-- SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

