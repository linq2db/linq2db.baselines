BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4674StockItem]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4674StockItem]
(
	[TenantId]    NVarChar(255)     NULL,
	[Code]        NVarChar(255)     NULL,
	[Description] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4674StockRoomItem]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4674StockRoomItem]
(
	[TenantId]      NVarChar(255)     NULL,
	[StockroomCode] NVarChar(255)     NULL,
	[ItemCode]      NVarChar(255)     NULL,
	[Quantity]      Decimal       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4674StockRoomItem]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4674StockItem]

