BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Product') IS NOT NULL)
	DROP TABLE [Product]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Product') IS NULL)
	EXECUTE('
		CREATE TABLE [Product]
		(
			[Id]         Int           NOT NULL,
			[Name]       NVarChar(255) NOT NULL,
			[CategoryId] Int           NOT NULL,

			CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductCategory') IS NOT NULL)
	DROP TABLE [ProductCategory]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductCategory') IS NULL)
	EXECUTE('
		CREATE TABLE [ProductCategory]
		(
			[Id]                 Int           NOT NULL,
			[Name]               NVarChar(255) NOT NULL,
			[ProductOrderLimit]  SmallInt      NOT NULL,
			[CustomerOrderLimit] SmallInt      NOT NULL,
			[PeriodOrderLimit]   SmallInt      NOT NULL,

			CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderHeader') IS NOT NULL)
	DROP TABLE [OrderHeader]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderHeader') IS NULL)
	EXECUTE('
		CREATE TABLE [OrderHeader]
		(
			[Id]       Int NOT NULL,
			[PeriodId] Int NOT NULL,

			CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderItem') IS NOT NULL)
	DROP TABLE [OrderItem]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderItem') IS NULL)
	EXECUTE('
		CREATE TABLE [OrderItem]
		(
			[Id]            Int      NOT NULL,
			[OrderHeaderId] Int      NOT NULL,
			[ProductId]     Int      NOT NULL,
			[Quantity]      SmallInt NOT NULL,

			CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderPeriod') IS NOT NULL)
	DROP TABLE [OrderPeriod]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderPeriod') IS NULL)
	EXECUTE('
		CREATE TABLE [OrderPeriod]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_OrderPeriod] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductsPerOrderPeriod') IS NOT NULL)
	DROP TABLE [ProductsPerOrderPeriod]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductsPerOrderPeriod') IS NULL)
	EXECUTE('
		CREATE TABLE [ProductsPerOrderPeriod]
		(
			[Id]            Int NOT NULL,
			[OrderPeriodId] Int NOT NULL,
			[ProductId]     Int NOT NULL,

			CONSTRAINT [PK_ProductsPerOrderPeriod] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 10
	[v1].[Id],
	[pop].[ProductId],
	[vpc].[CategoryId],
	COALESCE([pcc].[PeriodOrderLimit],0),
	COALESCE([vsp_1].[Quantity],0),
	COALESCE([pcc].[PeriodOrderLimit],0) - COALESCE([vsp_1].[Quantity],0),
	[v2_1].[MaxCapacity],
	[v2_1].[Quantity],
	[v2_1].[FreeCapacity]
FROM
	[OrderPeriod] [v1]
		INNER JOIN [ProductsPerOrderPeriod] [pop] ON [v1].[Id] = [pop].[OrderPeriodId]
		LEFT JOIN [Product] [vpc] ON [vpc].[Id] = [pop].[ProductId]
		LEFT JOIN [ProductCategory] [pcc] ON [pcc].[Id] = [vpc].[CategoryId]
		LEFT JOIN (
			SELECT
				COALESCE([vsp].[SUM_1],0) as [Quantity],
				[vsp].[OrderPeriodId],
				[vsp].[ProductId]
			FROM
				(
					SELECT
						[agroup].[Id] as [OrderPeriodId],
						[oi].[ProductId],
						SUM(COALESCE([oi].[Quantity],0)) as [SUM_1]
					FROM
						[OrderPeriod] [agroup]
							LEFT JOIN [OrderHeader] [oh] ON [agroup].[Id] = [oh].[PeriodId]
							LEFT JOIN [OrderItem] [oi] ON [oh].[Id] = [oi].[OrderHeaderId]
					GROUP BY
						[agroup].[Id],
						[oi].[ProductId]
				) [vsp]
		) [vsp_1] ON [vsp_1].[OrderPeriodId] = [v1].[Id] AND [vsp_1].[ProductId] = [pop].[ProductId]
		LEFT JOIN (
			SELECT
				COALESCE([sub].[PeriodOrderLimit],0) as [MaxCapacity],
				[vsopc].[SUM_1] as [Quantity],
				COALESCE([sub].[PeriodOrderLimit],0) - [vsopc].[SUM_1] as [FreeCapacity],
				[sub].[Id],
				[sub].[Id_1]
			FROM
				(
					SELECT
						[v2].[Id],
						[vpcc].[Id] as [Id_1],
						[vpcc].[PeriodOrderLimit]
					FROM
						[OrderPeriod] [v2],
						[ProductCategory] [vpcc]
				) [sub]
					LEFT JOIN (
						SELECT
							[agroup_1].[Id] as [OrderPeriodId],
							[p].[CategoryId],
							SUM([oi_1].[Quantity]) as [SUM_1]
						FROM
							[OrderPeriod] [agroup_1]
								LEFT JOIN [OrderHeader] [oh_1] ON [agroup_1].[Id] = [oh_1].[PeriodId]
								LEFT JOIN [OrderItem] [oi_1] ON [oh_1].[Id] = [oi_1].[OrderHeaderId]
								LEFT JOIN [Product] [p] ON [p].[Id] = [oi_1].[ProductId]
						GROUP BY
							[agroup_1].[Id],
							[p].[CategoryId]
					) [vsopc] ON [vsopc].[OrderPeriodId] = [sub].[Id] AND [vsopc].[CategoryId] = [sub].[Id_1]
		) [v2_1] ON [v2_1].[Id] = [v1].[Id] AND [v2_1].[Id_1] = [vpc].[CategoryId]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductsPerOrderPeriod') IS NOT NULL)
	DROP TABLE [ProductsPerOrderPeriod]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderPeriod') IS NOT NULL)
	DROP TABLE [OrderPeriod]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderItem') IS NOT NULL)
	DROP TABLE [OrderItem]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderHeader') IS NOT NULL)
	DROP TABLE [OrderHeader]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductCategory') IS NOT NULL)
	DROP TABLE [ProductCategory]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Product') IS NOT NULL)
	DROP TABLE [Product]

