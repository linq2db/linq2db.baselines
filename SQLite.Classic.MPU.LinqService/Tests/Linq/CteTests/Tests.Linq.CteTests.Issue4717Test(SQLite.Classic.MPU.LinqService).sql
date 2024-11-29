BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717Address]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4717Address]
(
	[Id]       INTEGER       NOT NULL,
	[Address1] NVarChar(255)     NULL,
	[City]     NVarChar(255)     NULL,
	[State]    NVarChar(255)     NULL,
	[Zip]      NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue4717Address] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717Warehouse]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4717Warehouse]
(
	[Id]        INTEGER       NOT NULL,
	[Name]      NVarChar(255)     NULL,
	[AddressId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Issue4717Warehouse] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717UnitOfMeasure]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4717UnitOfMeasure]
(
	[Id]           INTEGER       NOT NULL,
	[Name]         NVarChar(255)     NULL,
	[Abbreviation] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue4717UnitOfMeasure] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717Product]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4717Product]
(
	[Id]              INTEGER       NOT NULL,
	[Description]     NVarChar(255)     NULL,
	[Sku]             NVarChar(255)     NULL,
	[UnitOfMeasureId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Issue4717Product] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717ProductIncludedProductMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4717ProductIncludedProductMapping]
(
	[ProductId]         INTEGER NOT NULL,
	[IncludedProductId] INTEGER NOT NULL,
	[Quantity]          Decimal NOT NULL,

	CONSTRAINT [PK_Issue4717ProductIncludedProductMapping] PRIMARY KEY ([ProductId], [IncludedProductId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717WarehouseProductMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4717WarehouseProductMapping]
(
	[WarehouseId] INTEGER        NOT NULL,
	[ProductId]   INTEGER        NOT NULL,
	[StockOnHand] Decimal(10, 0) NOT NULL,

	CONSTRAINT [PK_Issue4717WarehouseProductMapping] PRIMARY KEY ([WarehouseId], [ProductId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue4717Address]
(
	[Id],
	[Address1],
	[City],
	[State],
	[Zip]
)
VALUES
(
	1,
	'123 Test St',
	'Test City',
	'TS',
	'12345'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue4717Warehouse]
(
	[Id],
	[Name],
	[AddressId]
)
VALUES
(
	1,
	'Test Warehouse',
	1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue4717UnitOfMeasure]
(
	[Id],
	[Name],
	[Abbreviation]
)
VALUES
(
	1,
	'Test Warehouse',
	'ea'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @productId  -- Int32
SET     @productId = 1

INSERT INTO [Issue4717Product]
(
	[Id],
	[Sku],
	[Description],
	[UnitOfMeasureId]
)
VALUES
(
	@productId,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @includedProductId  -- Int32
SET     @includedProductId = 2

INSERT INTO [Issue4717Product]
(
	[Id],
	[Sku],
	[Description],
	[UnitOfMeasureId]
)
VALUES
(
	@includedProductId,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @productId  -- Int32
SET     @productId = 1
DECLARE @includedProductId  -- Int32
SET     @includedProductId = 2

INSERT INTO [Issue4717ProductIncludedProductMapping]
(
	[ProductId],
	[IncludedProductId],
	[Quantity]
)
VALUES
(
	@productId,
	@includedProductId,
	10
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @productId  -- Int32
SET     @productId = 1

INSERT INTO [Issue4717WarehouseProductMapping]
(
	[WarehouseId],
	[ProductId],
	[StockOnHand]
)
VALUES
(
	1,
	@productId,
	10
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @productId  -- Int32
SET     @productId = 1

WITH [CTE_1] ([ProductId], [WarehouseId])
AS
(
	SELECT
		@productId,
		[w].[Id]
	FROM
		[Issue4717Warehouse] [w]
)
SELECT
	[source].[ProductId],
	(
		SELECT
			[wp].[StockOnHand]
		FROM
			[Issue4717WarehouseProductMapping] [wp]
		WHERE
			[wp].[WarehouseId] = [source].[WarehouseId]
		LIMIT 1
	),
	(
		SELECT
			SUM([wp_1].[StockOnHand])
		FROM
			[Issue4717WarehouseProductMapping] [wp_1]
		WHERE
			[wp_1].[WarehouseId] = [source].[WarehouseId]
	)
FROM
	[CTE_1] [source]
		INNER JOIN [Issue4717ProductIncludedProductMapping] [includedProductMapping] ON [source].[ProductId] = [includedProductMapping].[ProductId]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717WarehouseProductMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717ProductIncludedProductMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717Product]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717UnitOfMeasure]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717Warehouse]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4717Address]

