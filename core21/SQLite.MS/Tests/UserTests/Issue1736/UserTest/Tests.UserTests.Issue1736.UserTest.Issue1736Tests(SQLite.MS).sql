BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [StorageShelfDTO]
(
	[Id]        Guid NOT NULL,
	[ChannelID] Guid NOT NULL,
	[AisleID]   Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [ChannelDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [RefResourceStorageShelfDTO]
(
	[StorageShelfID] Guid NOT NULL,
	[ResourceID]     Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [RefOutfeedTransportOrderResourceDTO]
(
	[Id]                  Guid    NOT NULL,
	[Quantity]            Decimal NOT NULL,
	[InventoryResourceID] Guid        NULL,
	[ResourceID]          Guid    NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [AisleDTO]
(
	[Id]     Guid    NOT NULL,
	[Status] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [RefResPointAisleDTO]
(
	[AisleId]         Guid NOT NULL,
	[ResourcePointId] Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [WmsResourcePointDTO]
(
	[Id]             Guid NOT NULL,
	[IsStoragePlace] Bit  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [WmsLoadCarrierDTO]
(
	[Id]              Guid NOT NULL,
	[ResourcePointID] Guid     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [InventoryResourceDTO]
(
	[Id]            Guid    NOT NULL,
	[ProductStatus] INTEGER NOT NULL,
	[Quantity]      Decimal NOT NULL,
	[ResourceID]    Guid    NOT NULL,
	[MaterialID]    Guid    NOT NULL,
	[Status]        INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value_1  -- Guid
SET     @Value_1 = X'00000000000000000000000000000000'
DECLARE @Value_2  -- Guid
SET     @Value_2 = X'00000000000000000000000000000000'
DECLARE @Value_3  -- Guid
SET     @Value_3 = X'00000000000000000000000000000000'

SELECT
	[cr].[Id],
	[cr].[ResourcePointID],
	[cr].[SS],
	[cr].[ProductStatus],
	[cr].[C_2],
	[cr].[ResourceID],
	[cr].[MaterialID],
	[cr].[Status],
	[cr].[C_1],
	[cr].[Id_3],
	[cr].[ChannelID],
	[cr].[AisleID],
	[cr].[AisleStatus],
	[cr].[Id_4],
	[cr].[IsStoragePlace],
	[cr].[RefQty],
	[cr].[MixedStock]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[ResourcePointID],
			[t1].[Id_1],
			[t1].[ProductStatus],
			[t1].[Quantity],
			[t1].[ResourceID],
			[t1].[MaterialID],
			[t1].[Status],
			[t1].[Id_2] as [C_1],
			[t1].[Id_3],
			[t1].[ChannelID],
			[t1].[AisleID],
			[t1].[Status_1] as [AisleStatus],
			[t1].[Id_4],
			[t1].[IsStoragePlace],
			[t1].[RefQty],
			[t1].[MixedStock],
			NULL as [C_2],
			NULL as [SS]
		FROM
			(
				SELECT
					[r].[Id],
					[r].[ResourcePointID],
					[ir].[Id] as [Id_1],
					[ir].[ProductStatus],
					[ir].[Quantity],
					[ir].[ResourceID],
					[ir].[MaterialID],
					[ir].[Status],
					[c_1].[Id] as [Id_2],
					[ss].[Id] as [Id_3],
					[ss].[ChannelID],
					[ss].[AisleID],
					[aisle].[Status] as [Status_1],
					[rp].[Id] as [Id_4],
					[rp].[IsStoragePlace],
					Coalesce((
						SELECT
							Sum([x].[Quantity])
						FROM
							[RefOutfeedTransportOrderResourceDTO] [x]
						WHERE
							[x].[InventoryResourceID] = [ir].[Id]
					), 0) + Cast((
						SELECT
							Count(*)
						FROM
							[RefOutfeedTransportOrderResourceDTO] [x_1]
						WHERE
							[x_1].[ResourceID] = [r].[Id] AND [x_1].[InventoryResourceID] IS NULL
					) as Decimal(29, 10)) * [ir].[Quantity] as [RefQty],
					CASE
						WHEN EXISTS(
							SELECT
								*
							FROM
								[InventoryResourceDTO] [irMix]
							WHERE
								[irMix].[ResourceID] = [r].[Id] AND
								[irMix].[Status] >= 0 AND
								[irMix].[Status] <= 1 AND
								([irMix].[MaterialID] <> @Value_1 OR [irMix].[ProductStatus] <> 0)
						)
							THEN 1
						ELSE 0
					END as [MixedStock],
					[ir].[Quantity] as [Quantity_1],
					[ir].[Id] as [Id_5],
					[ir].[ProductStatus] as [ProductStatus_1],
					[ir].[ResourceID] as [ResourceID_1],
					[ir].[MaterialID] as [MaterialID_1],
					[ir].[Status] as [Status_2]
				FROM
					[StorageShelfDTO] [ss]
						INNER JOIN [ChannelDTO] [c_1] ON [ss].[ChannelID] = [c_1].[Id]
						INNER JOIN [RefResourceStorageShelfDTO] [refS] ON [ss].[Id] = [refS].[StorageShelfID]
						INNER JOIN [AisleDTO] [aisle] ON [ss].[AisleID] = [aisle].[Id]
						INNER JOIN [RefResPointAisleDTO] [aislerp] ON [ss].[AisleID] = [aislerp].[AisleId]
						INNER JOIN [WmsResourcePointDTO] [rp] ON [aislerp].[ResourcePointId] = [rp].[Id]
						INNER JOIN [WmsLoadCarrierDTO] [r] ON [refS].[ResourceID] = [r].[Id]
						INNER JOIN [InventoryResourceDTO] [ir] ON [r].[Id] = [ir].[ResourceID]
				WHERE
					[ir].[MaterialID] = @Value_2 AND [ir].[ProductStatus] = 0 AND
					[ir].[Quantity] > 0
			) [t1]
		UNION
		SELECT
			[r_1].[Id],
			[r_1].[ResourcePointID],
			[ir_1].[Id] as [Id_1],
			[ir_1].[ProductStatus],
			[ir_1].[Quantity],
			[ir_1].[ResourceID],
			[ir_1].[MaterialID],
			[ir_1].[Status],
			[rp_1].[Id] as [C_1],
			NULL as [Id_3],
			NULL as [ChannelID],
			NULL as [AisleID],
			0 as [AisleStatus],
			NULL as [Id_4],
			[rp_1].[IsStoragePlace],
			0 as [RefQty],
			0 as [MixedStock],
			NULL as [C_2],
			NULL as [SS]
		FROM
			[WmsResourcePointDTO] [rp_1]
				INNER JOIN [WmsLoadCarrierDTO] [r_1] ON [rp_1].[Id] = [r_1].[ResourcePointID]
				INNER JOIN [InventoryResourceDTO] [ir_1] ON [r_1].[Id] = [ir_1].[ResourceID]
		WHERE
			[rp_1].[IsStoragePlace] = 1 AND
			[ir_1].[MaterialID] = @Value_3 AND
			[ir_1].[ProductStatus] = 0 AND
			[ir_1].[Quantity] > 0
	) [cr]
WHERE
	[cr].[C_2] > [cr].[RefQty]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [RefResPointAisleDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [AisleDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [ChannelDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [StorageShelfDTO]

