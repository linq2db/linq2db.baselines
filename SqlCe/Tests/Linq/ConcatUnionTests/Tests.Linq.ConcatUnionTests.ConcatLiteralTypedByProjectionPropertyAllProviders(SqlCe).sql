-- SqlCe
SELECT
	[p].[Id],
	CAST('str1' AS NVarChar)
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS NVarChar)
FROM
	[SetLiteralTypingTable] [p_1]

-- SqlCe
SELECT
	[p].[Id],
	CAST('str2' AS NVarChar)
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS NVarChar)
FROM
	[SetLiteralTypingTable] [p_1]

