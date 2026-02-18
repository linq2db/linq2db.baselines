-- SqlServer.2025

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

-- SqlServer.2025

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

-- SqlServer.2025

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

-- SqlServer.2025
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

-- SqlServer.2025
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

-- SqlServer.2025
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

-- SqlServer.2025
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

-- SqlServer.2025
DECLARE @productId Int -- Int32
SET     @productId = 1

WITH [CTE_1] ([productId], [Id])
AS
(
	SELECT
		@productId,
		[w].[Id]
	FROM
		[Issue4717Warehouse] [w]
)
SELECT
	[source].[productId],
	(
		SELECT TOP (1)
			[wp].[StockOnHand]
		FROM
			[Issue4717WarehouseProductMapping] [wp]
		WHERE
			[wp].[WarehouseId] = [source].[Id]
	),
	(
		SELECT
			SUM([wp_1].[StockOnHand])
		FROM
			[Issue4717WarehouseProductMapping] [wp_1]
		WHERE
			[wp_1].[WarehouseId] = [source].[Id]
	)
FROM
	[CTE_1] [source]
		INNER JOIN [Issue4717ProductIncludedProductMapping] [includedProductMapping] ON [source].[productId] = [includedProductMapping].[ProductId]

