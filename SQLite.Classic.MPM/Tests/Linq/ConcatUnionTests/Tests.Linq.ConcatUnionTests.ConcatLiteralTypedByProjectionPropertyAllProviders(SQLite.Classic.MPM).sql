-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[Id],
	CAST('str1' AS VarChar)
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS VarChar)
FROM
	[SetLiteralTypingTable] [p_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[Id],
	CAST('str2' AS VarChar)
FROM
	[SetLiteralTypingTable] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS VarChar)
FROM
	[SetLiteralTypingTable] [p_1]

