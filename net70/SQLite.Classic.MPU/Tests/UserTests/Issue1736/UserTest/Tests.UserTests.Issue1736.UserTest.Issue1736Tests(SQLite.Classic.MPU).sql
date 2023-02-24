BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [StorageShelfDTO]
(
	[Id]        Guid NOT NULL,
	[AisleID]   Guid NOT NULL,
	[ChannelID] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ChannelDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RefResourceStorageShelfDTO]
(
	[ResourceID]     Guid NOT NULL,
	[StorageShelfID] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RefOutfeedTransportOrderResourceDTO]
(
	[Id]                  Guid    NOT NULL,
	[ResourceID]          Guid    NOT NULL,
	[InventoryResourceID] Guid        NULL,
	[Quantity]            Decimal NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AisleDTO]
(
	[Id]     Guid    NOT NULL,
	[Status] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefResPointAisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RefResPointAisleDTO]
(
	[ResourcePointId] Guid NOT NULL,
	[AisleId]         Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsResourcePointDTO]
(
	[Id]             Guid NOT NULL,
	[IsStoragePlace] Bit  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]              Guid NOT NULL,
	[ResourcePointID] Guid     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value_1  -- Guid
SET     @Value_1 = X'00000000000000000000000000000000'

SELECT
	[cr].[R_r_Id],
	[cr].[ResourcePointID],
	[cr].[IR_ir_Id],
	[cr].[Status],
	[cr].[MaterialID],
	[cr].[ResourceID],
	[cr].[Quantity],
	[cr].[ProductStatus],
	[cr].[C_c_Id],
	[cr].[SS_ss_Id],
	[cr].[AisleID],
	[cr].[ChannelID],
	[cr].[AisleStatus],
	[cr].[RP_rp_Id],
	[cr].[IsStoragePlace],
	[cr].[RefQty],
	[cr].[MixedStock]
FROM
	(
		SELECT
			[r].[Id] as [R_r_Id],
			[r].[ResourcePointID],
			[ir].[Id] as [IR_ir_Id],
			[ir].[Status],
			[ir].[MaterialID],
			[ir].[ResourceID],
			[ir].[Quantity],
			[ir].[ProductStatus],
			[c_1].[Id] as [C_c_Id],
			[ss].[Id] as [SS_ss_Id],
			[ss].[AisleID],
			[ss].[ChannelID],
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
			END as [MixedStock],
			NULL as [C_1],
			NULL as [SS]
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
		UNION
		SELECT
			[r_1].[Id] as [R_r_Id],
			[r_1].[ResourcePointID],
			[ir_1].[Id] as [IR_ir_Id],
			[ir_1].[Status],
			[ir_1].[MaterialID],
			[ir_1].[ResourceID],
			[ir_1].[Quantity],
			[ir_1].[ProductStatus],
			[rp_1].[Id] as [C_c_Id],
			NULL as [SS_ss_Id],
			NULL as [AisleID],
			NULL as [ChannelID],
			0 as [AisleStatus],
			NULL as [RP_rp_Id],
			[rp_1].[IsStoragePlace],
			0 as [RefQty],
			0 as [MixedStock],
			NULL as [C_1],
			NULL as [SS]
		FROM
			[WmsResourcePointDTO] [rp_1]
				INNER JOIN [WmsLoadCarrierDTO] [r_1] ON [rp_1].[Id] = [r_1].[ResourcePointID]
				INNER JOIN [InventoryResourceDTO] [ir_1] ON [r_1].[Id] = [ir_1].[ResourceID]
		WHERE
			[rp_1].[IsStoragePlace] = 1 AND
			[ir_1].[MaterialID] = @Value_1 AND
			[ir_1].[ProductStatus] = 0 AND
			[ir_1].[Quantity] > 0
	) [cr]
WHERE
	[cr].[Quantity] > [cr].[RefQty]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefResPointAisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

