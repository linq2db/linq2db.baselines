-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
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

