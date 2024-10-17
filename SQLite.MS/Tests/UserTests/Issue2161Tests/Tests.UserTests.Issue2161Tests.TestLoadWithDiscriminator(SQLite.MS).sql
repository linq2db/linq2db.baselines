BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Order]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Order]
(
	[OrderId]   INTEGER       NOT NULL,
	[OrderType] INTEGER       NOT NULL,
	[OrderName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Order] PRIMARY KEY ([OrderId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Order]
(
	[OrderId],
	[OrderType],
	[OrderName]
)
VALUES
(1,0,'Order1')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [OrderDetail]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [OrderDetail]
(
	[OrderDetailId] INTEGER       NOT NULL,
	[Title]         NVarChar(255)     NULL,
	[OrderId]       INTEGER       NOT NULL,

	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderDetailId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [OrderDetail]
(
	[OrderDetailId],
	[Title],
	[OrderId]
)
VALUES
(100,'Detail1',1)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN [o].[OrderType] = 1 THEN 1
		ELSE 0
	END,
	[o].[OrderId],
	[o].[OrderType],
	[o].[OrderName],
	CASE
		WHEN [o].[OrderType] = 0 THEN 1
		ELSE 0
	END
FROM
	[Order] [o]
WHERE
	[o].[OrderId] = 1
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [OrderDetail]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Order]

