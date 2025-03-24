﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

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
			[Order] [o]
		WHERE
			[o].[OrderId] = 1
		LIMIT 1
	) [m_1]
		INNER JOIN [OrderDetail] [d] ON [m_1].[OrderId] = [d].[OrderId]

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[o].[OrderType],
	[o].[OrderId],
	[o].[OrderName]
FROM
	[Order] [o]
WHERE
	[o].[OrderId] = 1
LIMIT 1

BeforeExecute
DisposeTransaction
