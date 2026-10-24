-- SqlServer.Contained SqlServer.2019
SELECT
	CAST(N'p_' AS NVarChar(4000)),
	[e].[Id],
	CAST(N'N' AS NVarChar(4000)),
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
	CAST(N'N' AS NVarChar(4000)),
	[e_1].[Name],
	NULL,
	CAST(N'p_' AS NVarChar(4000)),
	[e_1].[ParentId],
	CAST(N'N' AS NVarChar(4000))
FROM
	[ConcatSetOpEntity] [e_1]
WHERE
	[e_1].[ParentId] IS NOT NULL

-- SqlServer.Contained SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[ParentId],
	[t1].[Name]
FROM
	[ConcatSetOpEntity] [t1]

