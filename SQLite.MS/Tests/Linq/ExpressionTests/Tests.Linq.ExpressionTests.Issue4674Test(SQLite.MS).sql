BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4674StockItem]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4674StockItem]
(
	[TenantId]    NVarChar(255)     NULL,
	[Code]        NVarChar(255)     NULL,
	[Description] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4674StockRoomItem]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4674StockRoomItem]
(
	[TenantId]      NVarChar(255)     NULL,
	[StockroomCode] NVarChar(255)     NULL,
	[ItemCode]      NVarChar(255)     NULL,
	[Quantity]      Decimal       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4674StockRoomItem]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4674StockItem]

