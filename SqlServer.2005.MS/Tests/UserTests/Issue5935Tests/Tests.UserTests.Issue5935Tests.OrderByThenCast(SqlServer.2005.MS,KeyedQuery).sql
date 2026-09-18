-- SqlServer.2005.MS SqlServer.2005
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[ItemId],
	[d].[Log]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2) [k_1]
		INNER JOIN [ItemLog] [d] ON [k_1].[item] = [d].[ItemId]
ORDER BY
	[d].[Id]

