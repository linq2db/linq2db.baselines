-- SqlServer.CS.MS SqlServer.2025
SELECT
	[e].[Id],
	[e].[Item],
	[e].[Flag]
FROM
	[NestedInListEntity] [e]
WHERE
	IIF([e].[Flag] = 1, 1, 0) = IIF([e].[Id] = [e].[Item] OR [e].[Id] = 5, 1, 0)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Item],
	[t1].[Flag]
FROM
	[NestedInListEntity] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[e].[Id],
	[e].[Item],
	[e].[Flag]
FROM
	[NestedInListEntity] [e]
WHERE
	IIF([e].[Flag] = 1, 1, 0) <> IIF([e].[Id] = [e].[Item] OR [e].[Id] = 5, 1, 0)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Item],
	[t1].[Flag]
FROM
	[NestedInListEntity] [t1]

