-- SqlServer.2016.MS SqlServer.2016
SELECT
	CAST(N'p_' AS NVarChar(4000)),
	[e].[Id],
	CAST(N'N' AS NVarChar(4000)),
	[e].[Name]
FROM
	[ConcatSetOpEntity] [e]
WHERE
	[e].[ParentId] IS NULL
UNION ALL
SELECT
	CAST(N'c_' AS NVarChar(4000)),
	[e_1].[Id],
	CAST(N'N' AS NVarChar(4000)),
	[e_1].[Name]
FROM
	[ConcatSetOpEntity] [e_1]
WHERE
	[e_1].[ParentId] IS NOT NULL

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[ParentId],
	[t1].[Name]
FROM
	[ConcatSetOpEntity] [t1]

