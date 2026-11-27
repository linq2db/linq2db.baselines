-- SQLite.MS SQLite
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

-- SQLite.MS SQLite
SELECT
	[l].[ItemId],
	[l].[Id],
	[l].[Log]
FROM
	[EagerOrderItemLog] [l]
WHERE
	[l].[ItemId] IN (1, 2)
ORDER BY
	[l].[Id] DESC

