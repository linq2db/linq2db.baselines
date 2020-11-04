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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Order].[OrderId],
	[detail].[OrderDetailId],
	[detail].[Title],
	[detail].[OrderId]
FROM
	(
		SELECT DISTINCT
			[t1].[OrderId]
		FROM
			(
				SELECT
					[o].[OrderId]
				FROM
					[Order] [o]
				WHERE
					[o].[OrderId] = 1
				LIMIT @take
			) [t1]
	) [lw_Order]
		INNER JOIN [OrderDetail] [detail] ON [lw_Order].[OrderId] = [detail].[OrderId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[o].[OrderId],
	[o].[OrderType],
	[o].[OrderName]
FROM
	[Order] [o]
WHERE
	[o].[OrderId] = 1
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [OrderDetail]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Order]

