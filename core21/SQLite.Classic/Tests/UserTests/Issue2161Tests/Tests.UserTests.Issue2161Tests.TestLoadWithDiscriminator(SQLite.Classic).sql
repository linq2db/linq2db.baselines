BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Order]
(
	[OrderId]   INTEGER       NOT NULL,
	[OrderType] INTEGER       NOT NULL,
	[OrderName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Order] PRIMARY KEY ([OrderId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Order]
(
	[OrderId],
	[OrderType],
	[OrderName]
)
VALUES
(1,0,'Order1')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [OrderDetail]
(
	[OrderDetailId] INTEGER       NOT NULL,
	[Title]         NVarChar(255)     NULL,
	[OrderId]       INTEGER       NOT NULL,

	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderDetailId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [OrderDetail]
(
	[OrderDetailId],
	[Title],
	[OrderId]
)
VALUES
(100,'Detail1',1)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

DROP TABLE [OrderDetail]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Order]

