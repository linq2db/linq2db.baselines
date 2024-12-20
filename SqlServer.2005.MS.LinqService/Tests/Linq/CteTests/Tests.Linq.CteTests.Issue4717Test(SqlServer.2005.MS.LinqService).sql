BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Address]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717Address]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Address]', N'U') IS NULL)
	CREATE TABLE [Issue4717Address]
	(
		[Id]       Int            NOT NULL,
		[Address1] NVarChar(4000)     NULL,
		[City]     NVarChar(4000)     NULL,
		[State]    NVarChar(4000)     NULL,
		[Zip]      NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue4717Address] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Warehouse]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717Warehouse]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Warehouse]', N'U') IS NULL)
	CREATE TABLE [Issue4717Warehouse]
	(
		[Id]        Int            NOT NULL,
		[Name]      NVarChar(4000)     NULL,
		[AddressId] Int            NOT NULL,

		CONSTRAINT [PK_Issue4717Warehouse] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717UnitOfMeasure]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717UnitOfMeasure]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717UnitOfMeasure]', N'U') IS NULL)
	CREATE TABLE [Issue4717UnitOfMeasure]
	(
		[Id]           Int            NOT NULL,
		[Name]         NVarChar(4000)     NULL,
		[Abbreviation] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue4717UnitOfMeasure] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Product]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717Product]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Product]', N'U') IS NULL)
	CREATE TABLE [Issue4717Product]
	(
		[Id]              Int            NOT NULL,
		[Description]     NVarChar(4000)     NULL,
		[Sku]             NVarChar(4000)     NULL,
		[UnitOfMeasureId] Int            NOT NULL,

		CONSTRAINT [PK_Issue4717Product] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717ProductIncludedProductMapping]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717ProductIncludedProductMapping]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717ProductIncludedProductMapping]', N'U') IS NULL)
	CREATE TABLE [Issue4717ProductIncludedProductMapping]
	(
		[ProductId]         Int     NOT NULL,
		[IncludedProductId] Int     NOT NULL,
		[Quantity]          Decimal NOT NULL,

		CONSTRAINT [PK_Issue4717ProductIncludedProductMapping] PRIMARY KEY CLUSTERED ([ProductId], [IncludedProductId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717WarehouseProductMapping]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717WarehouseProductMapping]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717WarehouseProductMapping]', N'U') IS NULL)
	CREATE TABLE [Issue4717WarehouseProductMapping]
	(
		[WarehouseId] Int            NOT NULL,
		[ProductId]   Int            NOT NULL,
		[StockOnHand] Decimal(10, 0) NOT NULL,

		CONSTRAINT [PK_Issue4717WarehouseProductMapping] PRIMARY KEY CLUSTERED ([WarehouseId], [ProductId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
	N'123 Test St',
	N'Test City',
	N'TS',
	N'12345'
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4717Warehouse]
(
	[Id],
	[Name],
	[AddressId]
)
VALUES
(
	1,
	N'Test Warehouse',
	1
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4717UnitOfMeasure]
(
	[Id],
	[Name],
	[Abbreviation]
)
VALUES
(
	1,
	N'Test Warehouse',
	N'ea'
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @productId Int -- Int32
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
	N'123-SKU',
	N'Test 123 Sku',
	1
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @includedProductId Int -- Int32
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
	N'ABC-SKU',
	N'Test ABC Sku',
	1
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @productId Int -- Int32
SET     @productId = 1
DECLARE @includedProductId Int -- Int32
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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @productId Int -- Int32
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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @productId Int -- Int32
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
		SELECT TOP (1)
			[wp].[StockOnHand]
		FROM
			[Issue4717WarehouseProductMapping] [wp]
		WHERE
			[wp].[WarehouseId] = [source].[WarehouseId]
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
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717WarehouseProductMapping]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717WarehouseProductMapping]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717ProductIncludedProductMapping]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717ProductIncludedProductMapping]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Product]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717Product]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717UnitOfMeasure]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717UnitOfMeasure]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Warehouse]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717Warehouse]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4717Address]', N'U') IS NOT NULL)
	DROP TABLE [Issue4717Address]

