-- SQLite.MS SQLite
SELECT
	CAST('p_' AS NVarChar(255)),
	[e].[Id],
	CAST('N' AS NVarChar(255)),
	NULL,
	NULL,
	[e].[Name],
	NULL,
	NULL,
	NULL,
	NULL
FROM
	[ConcatSetOpEntity] [e]
WHERE
	[e].[ParentId] IS NULL
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	[e_1].[Id],
	CAST('N' AS NVarChar(255)),
	[e_1].[Name],
	NULL,
	CAST('p_' AS NVarChar(255)),
	[e_1].[ParentId],
	CAST('N' AS NVarChar(255))
FROM
	[ConcatSetOpEntity] [e_1]
WHERE
	[e_1].[ParentId] IS NOT NULL

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[ParentId],
	[t1].[Name]
FROM
	[ConcatSetOpEntity] [t1]

