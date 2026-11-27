-- SqlServer.2008
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

-- SqlServer.2008
SELECT
	[l].[ItemId],
	[l].[Log]
FROM
	[EagerOrderItemLog] [l]
WHERE
	[l].[ItemId] IN (1, 2)
ORDER BY
	[l].[Id]

