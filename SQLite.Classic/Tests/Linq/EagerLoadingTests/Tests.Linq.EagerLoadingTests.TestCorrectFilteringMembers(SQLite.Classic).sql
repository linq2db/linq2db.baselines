BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e1].[Id1],
	[e1].[Value],
	[e1].[ByteValues]
FROM
	[MasterClass] [e1]
UNION ALL
SELECT
	[e].[Id1],
	CAST('Str' AS NVarChar(255)),
	[e].[ByteValues]
FROM
	[MasterClass] [e]

