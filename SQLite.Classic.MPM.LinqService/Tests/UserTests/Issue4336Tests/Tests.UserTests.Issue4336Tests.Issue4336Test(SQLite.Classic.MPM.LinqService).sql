﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Product]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Product]
(
	[Id]         INTEGER       NOT NULL,
	[Name]       NVarChar(255) NOT NULL,
	[CategoryId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Product] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductCategory]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ProductCategory]
(
	[Id]                 INTEGER       NOT NULL,
	[Name]               NVarChar(255) NOT NULL,
	[ProductOrderLimit]  SmallInt      NOT NULL,
	[CustomerOrderLimit] SmallInt      NOT NULL,
	[PeriodOrderLimit]   SmallInt      NOT NULL,

	CONSTRAINT [PK_ProductCategory] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderHeader]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [OrderHeader]
(
	[Id]       INTEGER NOT NULL,
	[PeriodId] INTEGER NOT NULL,

	CONSTRAINT [PK_OrderHeader] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderItem]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [OrderItem]
(
	[Id]            INTEGER  NOT NULL,
	[OrderHeaderId] INTEGER  NOT NULL,
	[ProductId]     INTEGER  NOT NULL,
	[Quantity]      SmallInt NOT NULL,

	CONSTRAINT [PK_OrderItem] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderPeriod]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [OrderPeriod]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_OrderPeriod] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductsPerOrderPeriod]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ProductsPerOrderPeriod]
(
	[Id]            INTEGER NOT NULL,
	[OrderPeriodId] INTEGER NOT NULL,
	[ProductId]     INTEGER NOT NULL,

	CONSTRAINT [PK_ProductsPerOrderPeriod] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[v1].[Id],
	[pop].[ProductId],
	[vpc].[CategoryId],
	COALESCE([pcc].[PeriodOrderLimit],0),
	COALESCE([vsp].[Quantity],0),
	COALESCE([pcc].[PeriodOrderLimit],0) - COALESCE([vsp].[Quantity],0),
	[v2_1].[PeriodOrderLimit],
	[v2_1].[Quantity],
	[v2_1].[FreeCapacity]
FROM
	[OrderPeriod] [v1]
		INNER JOIN [ProductsPerOrderPeriod] [pop] ON [v1].[Id] = [pop].[OrderPeriodId]
		LEFT JOIN [Product] [vpc] ON [vpc].[Id] = [pop].[ProductId]
		LEFT JOIN [ProductCategory] [pcc] ON [pcc].[Id] = [vpc].[CategoryId]
		LEFT JOIN (
			SELECT
				[agroup].[Id] as [OrderPeriodId],
				[oi].[ProductId],
				COALESCE(SUM(COALESCE([oi].[Quantity],0)),0) as [Quantity]
			FROM
				[OrderPeriod] [agroup]
					LEFT JOIN [OrderHeader] [oh] ON [agroup].[Id] = [oh].[PeriodId]
					LEFT JOIN [OrderItem] [oi] ON [oh].[Id] = [oi].[OrderHeaderId]
			GROUP BY
				[agroup].[Id],
				[oi].[ProductId]
		) [vsp] ON [vsp].[OrderPeriodId] = [v1].[Id] AND [vsp].[ProductId] = [pop].[ProductId]
		LEFT JOIN (
			SELECT
				COALESCE([vpcc].[PeriodOrderLimit],0) as [PeriodOrderLimit],
				[vsopc].[SUM_1] as [Quantity],
				COALESCE([vpcc].[PeriodOrderLimit],0) - [vsopc].[SUM_1] as [FreeCapacity],
				[v2].[Id],
				[vpcc].[Id] as [Id_1]
			FROM
				[OrderPeriod] [v2]
					CROSS JOIN [ProductCategory] [vpcc]
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
					) [vsopc] ON [vsopc].[OrderPeriodId] = [v2].[Id] AND [vsopc].[CategoryId] = [vpcc].[Id]
		) [v2_1] ON [v2_1].[Id] = [v1].[Id] AND [v2_1].[Id_1] = [vpc].[CategoryId]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductsPerOrderPeriod]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderPeriod]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderItem]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderHeader]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductCategory]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Product]

