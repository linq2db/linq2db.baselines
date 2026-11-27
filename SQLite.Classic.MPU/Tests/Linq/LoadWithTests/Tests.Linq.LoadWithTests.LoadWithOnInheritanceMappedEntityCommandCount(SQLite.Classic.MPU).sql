-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[m_1].[OrderId],
	[d].[OrderDetailId],
	[d].[Title],
	[d].[OrderId]
FROM
	(
		SELECT
			[o].[OrderId]
		FROM
			[DiscriminatedOrder] [o]
		WHERE
			[o].[OrderId] = 1
		LIMIT 1
	) [m_1]
		INNER JOIN [DiscriminatedOrderDetail] [d] ON [m_1].[OrderId] = [d].[OrderId]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[o].[OrderType],
	[o].[OrderId],
	[o].[OrderName]
FROM
	[DiscriminatedOrder] [o]
WHERE
	[o].[OrderId] = 1
LIMIT 1

