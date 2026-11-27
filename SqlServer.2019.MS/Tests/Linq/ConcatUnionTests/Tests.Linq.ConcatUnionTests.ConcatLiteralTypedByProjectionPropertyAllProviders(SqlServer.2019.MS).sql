-- SqlServer.2019.MS SqlServer.2019
SELECT
	[p].[Id],
	CAST('str1' AS VarChar(Max))
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS VarChar(Max))
FROM
	[SetLiteralTypingTable] [p_1]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[p].[Id],
	CAST('str2' AS VarChar(Max))
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS VarChar(Max))
FROM
	[SetLiteralTypingTable] [p_1]

