-- SqlServer.2005
SELECT
	[e].[Id],
	[e].[Item],
	[e].[Flag]
FROM
	[NestedInListEntity] [e]
WHERE
	CASE
		WHEN [e].[Flag] = 1 THEN 1
		ELSE 0
	END = CASE
		WHEN [e].[Id] IN ([e].[Item], 5) THEN 1
		WHEN NOT ([e].[Id] = [e].[Item] AND [e].[Item] IS NOT NULL OR [e].[Id] = 5)
			THEN 0
		ELSE NULL
	END

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Item],
	[t1].[Flag]
FROM
	[NestedInListEntity] [t1]

-- SqlServer.2005
SELECT
	[e].[Id],
	[e].[Item],
	[e].[Flag]
FROM
	[NestedInListEntity] [e]
WHERE
	CASE
		WHEN [e].[Flag] = 1 THEN 1
		ELSE 0
	END <> CASE
		WHEN [e].[Id] IN ([e].[Item], 5) THEN 1
		WHEN NOT ([e].[Id] = [e].[Item] AND [e].[Item] IS NOT NULL OR [e].[Id] = 5)
			THEN 0
		ELSE NULL
	END

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Item],
	[t1].[Flag]
FROM
	[NestedInListEntity] [t1]

