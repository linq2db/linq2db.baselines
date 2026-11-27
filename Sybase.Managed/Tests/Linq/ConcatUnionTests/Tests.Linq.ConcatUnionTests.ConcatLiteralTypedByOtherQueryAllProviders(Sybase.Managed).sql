-- Sybase.Managed Sybase
SELECT
	[p].[Id],
	[p].[Str]
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS VarChar)
FROM
	[SetLiteralTypingTable] [p_1]

-- Sybase.Managed Sybase
SELECT
	[p].[Id],
	CAST('str' AS VarChar)
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[SetLiteralTypingTable] [p_1]

