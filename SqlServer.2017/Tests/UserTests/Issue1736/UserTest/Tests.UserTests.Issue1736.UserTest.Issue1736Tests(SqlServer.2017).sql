﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [StorageShelfDTO]
	(
		[Id]        UniqueIdentifier NOT NULL,
		[AisleID]   UniqueIdentifier NOT NULL,
		[ChannelID] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[ChannelDTO]', N'U') IS NULL)
	CREATE TABLE [ChannelDTO]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[RefResourceStorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [RefResourceStorageShelfDTO]
	(
		[ResourceID]     UniqueIdentifier NOT NULL,
		[StorageShelfID] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[RefOutfeedTransportOrderResourceDTO]', N'U') IS NULL)
	CREATE TABLE [RefOutfeedTransportOrderResourceDTO]
	(
		[Id]                  UniqueIdentifier NOT NULL,
		[ResourceID]          UniqueIdentifier NOT NULL,
		[InventoryResourceID] UniqueIdentifier     NULL,
		[Quantity]            Decimal          NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[AisleDTO]', N'U') IS NULL)
	CREATE TABLE [AisleDTO]
	(
		[Id]     UniqueIdentifier NOT NULL,
		[Status] Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [RefResPointAisleDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[RefResPointAisleDTO]', N'U') IS NULL)
	CREATE TABLE [RefResPointAisleDTO]
	(
		[ResourcePointId] UniqueIdentifier NOT NULL,
		[AisleId]         UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[WmsResourcePointDTO]', N'U') IS NULL)
	CREATE TABLE [WmsResourcePointDTO]
	(
		[Id]             UniqueIdentifier NOT NULL,
		[IsStoragePlace] Bit              NOT NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NULL)
	CREATE TABLE [WmsLoadCarrierDTO]
	(
		[Id]              UniqueIdentifier NOT NULL,
		[ResourcePointID] UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[InventoryResourceDTO]', N'U') IS NULL)
	CREATE TABLE [InventoryResourceDTO]
	(
		[Id]            UniqueIdentifier NOT NULL,
		[Status]        Int              NOT NULL,
		[MaterialID]    UniqueIdentifier NOT NULL,
		[ResourceID]    UniqueIdentifier NOT NULL,
		[Quantity]      Decimal          NOT NULL,
		[ProductStatus] Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT
	[cr_1].[Id],
	[cr_1].[Status],
	[cr_1].[MaterialID],
	[cr_1].[ResourceID],
	[cr_1].[Quantity],
	[cr_1].[ProductStatus],
	[cr_1].[Id_1],
	[cr_1].[ResourcePointID],
	[cr_1].[Id_2],
	[cr_1].[AisleID],
	[cr_1].[ChannelID],
	[cr_1].[Id_3],
	[cr_1].[AisleStatus],
	[cr_1].[Id_4],
	[cr_1].[IsStoragePlace],
	[cr_1].[RefQty],
	[cr_1].[MixedStock]
FROM
	(
		SELECT
			Coalesce((
				SELECT
					SUM([x].[Quantity])
				FROM
					[RefOutfeedTransportOrderResourceDTO] [x]
				WHERE
					[x].[InventoryResourceID] = [ir].[Id]
			), 0) + (
				SELECT
					CAST(COUNT(*) AS Decimal(38, 17))
				FROM
					[RefOutfeedTransportOrderResourceDTO] [x_1]
				WHERE
					[x_1].[ResourceID] = [r].[Id] AND [x_1].[InventoryResourceID] IS NULL
			) * [ir].[Quantity] as [RefQty],
			[ir].[Quantity],
			[ir].[Id],
			[ir].[Status],
			[ir].[MaterialID],
			[ir].[ResourceID],
			[ir].[ProductStatus],
			[r].[Id] as [Id_1],
			[r].[ResourcePointID],
			[cr].[Id] as [Id_2],
			[cr].[AisleID],
			[cr].[ChannelID],
			[c_1].[Id] as [Id_3],
			[aisle].[Status] as [AisleStatus],
			[rp].[Id] as [Id_4],
			[rp].[IsStoragePlace],
			IIF( EXISTS (
				SELECT
					*
				FROM
					[InventoryResourceDTO] [irMix]
				WHERE
					[irMix].[ResourceID] = [r].[Id] AND [irMix].[Status] >= 0 AND
					[irMix].[Status] <= 1
			), 1, 0) as [MixedStock]
		FROM
			[StorageShelfDTO] [cr]
				INNER JOIN [ChannelDTO] [c_1] ON [cr].[ChannelID] = [c_1].[Id]
				INNER JOIN [RefResourceStorageShelfDTO] [refS] ON [cr].[Id] = [refS].[StorageShelfID]
				INNER JOIN [AisleDTO] [aisle] ON [cr].[AisleID] = [aisle].[Id]
				INNER JOIN [RefResPointAisleDTO] [aislerp] ON [cr].[AisleID] = [aislerp].[AisleId]
				INNER JOIN [WmsResourcePointDTO] [rp] ON [aislerp].[ResourcePointId] = [rp].[Id]
				INNER JOIN [WmsLoadCarrierDTO] [r] ON [refS].[ResourceID] = [r].[Id]
				INNER JOIN [InventoryResourceDTO] [ir] ON [r].[Id] = [ir].[ResourceID]
		WHERE
			1 = 0
		UNION
		SELECT
			CAST(0 AS Decimal(38, 17)) as [RefQty],
			[ir_1].[Quantity],
			[ir_1].[Id],
			[ir_1].[Status],
			[ir_1].[MaterialID],
			[ir_1].[ResourceID],
			[ir_1].[ProductStatus],
			[r_1].[Id] as [Id_1],
			[r_1].[ResourcePointID],
			NULL as [Id_2],
			NULL as [AisleID],
			NULL as [ChannelID],
			NULL as [Id_3],
			CAST(0 AS Int) as [AisleStatus],
			[rp_1].[Id] as [Id_4],
			[rp_1].[IsStoragePlace],
			CAST(0 AS Bit) as [MixedStock]
		FROM
			[WmsResourcePointDTO] [rp_1]
				INNER JOIN [WmsLoadCarrierDTO] [r_1] ON [rp_1].[Id] = [r_1].[ResourcePointID]
				INNER JOIN [InventoryResourceDTO] [ir_1] ON [r_1].[Id] = [ir_1].[ResourceID]
		WHERE
			1 = 0
	) [cr_1]
WHERE
	[cr_1].[Quantity] > [cr_1].[RefQty]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [RefResPointAisleDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [StorageShelfDTO]

