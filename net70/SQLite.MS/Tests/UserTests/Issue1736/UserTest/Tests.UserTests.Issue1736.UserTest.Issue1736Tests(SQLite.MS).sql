BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [StorageShelfDTO]
(
	[Id]        Guid NOT NULL,
	[ChannelID] Guid NOT NULL,
	[AisleID]   Guid NOT NULL
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
	[StorageShelfID] Guid NOT NULL,
	[ResourceID]     Guid NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefOutfeedTransportOrderResourceDTO]
(
	[Id]                  Guid    NOT NULL,
	[Quantity]            Decimal NOT NULL,
	[InventoryResourceID] Guid        NULL,
	[ResourceID]          Guid    NOT NULL
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
	[AisleId]         Guid NOT NULL,
	[ResourcePointId] Guid NOT NULL
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

SELECT
	[cr].[R_r_Id],
	[cr].[ResourcePointID],
	[cr].[IR_ir_Id],
	[cr].[ProductStatus],
	[cr].[Quantity],
	[cr].[ResourceID],
	[cr].[MaterialID],
	[cr].[Status],
	[cr].[C_1],
	[cr].[SS_ss_Id],
	[cr].[ChannelID],
	[cr].[AisleID],
	[cr].[AisleStatus],
	[cr].[RP_rp_Id],
	[cr].[IsStoragePlace],
	[cr].[RefQty],
	[cr].[MixedStock]
FROM
	(
		SELECT
			[t1].[Quantity],
			[t1].[RefQty],
			[t1].[R_r_Id],
			[t1].[ResourcePointID],
			[t1].[IR_ir_Id],
			[t1].[ProductStatus],
			[t1].[ResourceID],
			[t1].[MaterialID],
			[t1].[Status],
			[t1].[C_c_Id] as [C_1],
			[t1].[SS_ss_Id],
			[t1].[ChannelID],
			[t1].[AisleID],
			[t1].[AisleStatus],
			[t1].[RP_rp_Id],
			[t1].[IsStoragePlace],
			[t1].[MixedStock]
		FROM
			(
				SELECT
					[r].[Id] as [R_r_Id],
					[r].[ResourcePointID],
					[ir].[Id] as [IR_ir_Id],
					[ir].[ProductStatus],
					[ir].[Quantity],
					[ir].[ResourceID],
					[ir].[MaterialID],
					[ir].[Status],
					[c_1].[Id] as [C_c_Id],
					[ss].[Id] as [SS_ss_Id],
					[ss].[ChannelID],
					[ss].[AisleID],
					[aisle].[Status] as [AisleStatus],
					[rp].[Id] as [RP_rp_Id],
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
					) as Decimal) * [ir].[Quantity] as [RefQty],
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
					END as [MixedStock]
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
					[ir].[MaterialID] = @Value_1 AND [ir].[ProductStatus] = 0 AND
					[ir].[Quantity] > 0
			) [t1]
	) [cr]
WHERE
	[cr].[Quantity] > [cr].[RefQty]

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

