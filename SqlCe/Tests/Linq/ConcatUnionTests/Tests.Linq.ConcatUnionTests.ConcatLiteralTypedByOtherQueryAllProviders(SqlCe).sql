-- SqlCe
SELECT
	[p].[Id],
	[p].[Str]
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str' AS NVarChar)
FROM
	[SetLiteralTypingTable] [p_1]

-- SqlCe
SELECT
	[p].[Id],
	CAST('str' AS NVarChar)
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[SetLiteralTypingTable] [p_1]

