-- SqlServer.2005
SELECT
	[p].[Id],
	[p].[Str]
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS VarChar(Max))
FROM
	[SetLiteralTypingTable] [p_1]

-- SqlServer.2005
SELECT
	[p].[Id],
	CAST('str' AS VarChar(Max))
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[SetLiteralTypingTable] [p_1]

