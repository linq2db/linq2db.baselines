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
	([b].[VarCharColumn] = Replace([a].[VarCharColumn], '?', @dash) OR [b].[VarCharColumn] IS NULL AND [a].[VarCharColumn] IS NULL) AND
	([b].[VarCharColumn] = CASE
		WHEN [a].[VarCharColumn] IS NULL OR LEN([a].[VarCharColumn] + N'.') >= 6
			THEN [a].[VarCharColumn]
		ELSE REPLICATE('0', 5 - (LEN([a].[VarCharColumn] + N'.') - 1)) + [a].[VarCharColumn]
	END OR [b].[VarCharColumn] IS NULL AND CASE
		WHEN [a].[VarCharColumn] IS NULL OR LEN([a].[VarCharColumn] + N'.') >= 6
			THEN [a].[VarCharColumn]
		ELSE REPLICATE('0', 5 - (LEN([a].[VarCharColumn] + N'.') - 1)) + [a].[VarCharColumn]
	END IS NULL)

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

