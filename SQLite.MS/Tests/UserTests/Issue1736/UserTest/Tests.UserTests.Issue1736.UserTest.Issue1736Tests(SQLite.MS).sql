BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [StorageShelfDTO]
(
	[Id]        Guid NOT NULL,
	[AisleID]   Guid NOT NULL,
	[ChannelID] Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ChannelDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefResourceStorageShelfDTO]
(
	[ResourceID]     Guid NOT NULL,
	[StorageShelfID] Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefOutfeedTransportOrderResourceDTO]
(
	[Id]                  Guid    NOT NULL,
	[ResourceID]          Guid    NOT NULL,
	[InventoryResourceID] Guid        NULL,
	[Quantity]            Decimal NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AisleDTO]
(
	[Id]     Guid    NOT NULL,
	[Status] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResPointAisleDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefResPointAisleDTO]
(
	[ResourcePointId] Guid NOT NULL,
	[AisleId]         Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WmsResourcePointDTO]
(
	[Id]             Guid NOT NULL,
	[IsStoragePlace] Bit  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]              Guid NOT NULL,
	[ResourcePointID] Guid     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[Id]            Guid    NOT NULL,
	[Status]        INTEGER NOT NULL,
	[MaterialID]    Guid    NOT NULL,
	[ResourceID]    Guid    NOT NULL,
	[Quantity]      Decimal NOT NULL,
	[ProductStatus] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Guid
SET     @Value = X'00000000000000000000000000000000'

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
					CAST(COUNT(*) AS Decimal)
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
						([irMix].[MaterialID] <> @Value OR [irMix].[ProductStatus] <> 0)
				)
					THEN 1
				ELSE 0
			END as [MixedStock]
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
			[ir].[MaterialID] = @Value AND [ir].[ProductStatus] = 0 AND
			[ir].[Quantity] > 0
		UNION
		SELECT
			CAST(0 AS Decimal) as [RefQty],
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
			CAST(0 AS INTEGER) as [AisleStatus],
			[rp_1].[Id] as [Id_4],
			[rp_1].[IsStoragePlace],
			CAST(0 AS Bit) as [MixedStock]
		FROM
			[WmsResourcePointDTO] [rp_1]
				INNER JOIN [WmsLoadCarrierDTO] [r_1] ON [rp_1].[Id] = [r_1].[ResourcePointID]
				INNER JOIN [InventoryResourceDTO] [ir_1] ON [r_1].[Id] = [ir_1].[ResourceID]
		WHERE
			[rp_1].[IsStoragePlace] = 1 AND
			[ir_1].[MaterialID] = @Value AND
			[ir_1].[ProductStatus] = 0 AND
			[ir_1].[Quantity] > 0
	) [cr_1]
WHERE
	[cr_1].[Quantity] > [cr_1].[RefQty]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResPointAisleDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

