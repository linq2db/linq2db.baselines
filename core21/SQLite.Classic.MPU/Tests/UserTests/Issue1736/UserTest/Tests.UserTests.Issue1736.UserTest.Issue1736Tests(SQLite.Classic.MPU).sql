BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [StorageShelfDTO]
(
	[Id]        Guid NOT NULL,
	[ChannelID] Guid NOT NULL,
	[AisleID]   Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [ChannelDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [RefResourceStorageShelfDTO]
(
	[StorageShelfID] Guid NOT NULL,
	[ResourceID]     Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [RefOutfeedTransportOrderResourceDTO]
(
	[Id]                  Guid    NOT NULL,
	[Quantity]            Decimal NOT NULL,
	[InventoryResourceID] Guid        NULL,
	[ResourceID]          Guid    NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [AisleDTO]
(
	[Id]     Guid    NOT NULL,
	[Status] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [RefResPointAisleDTO]
(
	[AisleId]         Guid NOT NULL,
	[ResourcePointId] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [WmsResourcePointDTO]
(
	[Id]             Guid NOT NULL,
	[IsStoragePlace] Bit  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [WmsLoadCarrierDTO]
(
	[Id]              Guid NOT NULL,
	[ResourcePointID] Guid     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value_1  -- Guid
SET     @Value_1 = Cast(x'00000000000000000000000000000000' as blob)
DECLARE @Value_2  -- Guid
SET     @Value_2 = Cast(x'00000000000000000000000000000000' as blob)
DECLARE @Value_3  -- Guid
SET     @Value_3 = Cast(x'00000000000000000000000000000000' as blob)

SELECT
	[cr].[R],
	[cr].[R_1],
	[cr].[IR],
	[cr].[IR_1],
	[cr].[IR_2],
	[cr].[IR_3],
	[cr].[IR_4],
	[cr].[IR_5],
	[cr].[C_1],
	[cr].[SS],
	[cr].[SS_1],
	[cr].[SS_2],
	[cr].[AisleStatus],
	[cr].[RP],
	[cr].[RP_1],
	[cr].[RefQty],
	[cr].[MixedStock]
FROM
	(
		SELECT
			[t1].[Id] as [R],
			[t1].[ResourcePointID] as [R_1],
			[t1].[Id_1] as [IR],
			[t1].[ProductStatus] as [IR_1],
			[t1].[Quantity] as [IR_2],
			[t1].[ResourceID] as [IR_3],
			[t1].[MaterialID] as [IR_4],
			[t1].[Status] as [IR_5],
			[t1].[Id_2] as [C_1],
			[t1].[Id_3] as [SS],
			[t1].[ChannelID] as [SS_1],
			[t1].[AisleID] as [SS_2],
			[t1].[Status_1] as [AisleStatus],
			[t1].[Id_4] as [RP],
			[t1].[IsStoragePlace] as [RP_1],
			[t1].[RefQty],
			[t1].[c1] as [MixedStock],
			NULL as [c1],
			NULL as [c2]
		FROM
			(
				SELECT
					[r_2].[Id],
					[r_2].[ResourcePointID],
					[ir_6].[Id] as [Id_1],
					[ir_6].[ProductStatus],
					[ir_6].[Quantity],
					[ir_6].[ResourceID],
					[ir_6].[MaterialID],
					[ir_6].[Status],
					[c_2].[Id] as [Id_2],
					[ss_3].[Id] as [Id_3],
					[ss_3].[ChannelID],
					[ss_3].[AisleID],
					[aisle].[Status] as [Status_1],
					[rp_2].[Id] as [Id_4],
					[rp_2].[IsStoragePlace],
					Coalesce((
						SELECT
							Sum([x].[Quantity])
						FROM
							[RefOutfeedTransportOrderResourceDTO] [x]
						WHERE
							[x].[InventoryResourceID] = [ir_6].[Id]
					), 0) + Cast((
						SELECT
							Count(*)
						FROM
							[RefOutfeedTransportOrderResourceDTO] [x_1]
						WHERE
							[x_1].[ResourceID] = [r_2].[Id] AND [x_1].[InventoryResourceID] IS NULL
					) as Decimal(29,10)) * [ir_6].[Quantity] as [RefQty],
					CASE
						WHEN EXISTS(
							SELECT
								*
							FROM
								[InventoryResourceDTO] [irMix]
							WHERE
								[irMix].[ResourceID] = [r_2].[Id] AND
								[irMix].[Status] >= 0 AND
								[irMix].[Status] <= 1 AND
								([irMix].[MaterialID] <> @Value_1 OR [irMix].[ProductStatus] <> 0)
						)
							THEN 1
						ELSE 0
					END as [c1]
				FROM
					[StorageShelfDTO] [ss_3]
						INNER JOIN [ChannelDTO] [c_2] ON [ss_3].[ChannelID] = [c_2].[Id]
						INNER JOIN [RefResourceStorageShelfDTO] [refS] ON [ss_3].[Id] = [refS].[StorageShelfID]
						INNER JOIN [AisleDTO] [aisle] ON [ss_3].[AisleID] = [aisle].[Id]
						INNER JOIN [RefResPointAisleDTO] [aislerp] ON [ss_3].[AisleID] = [aislerp].[AisleId]
						INNER JOIN [WmsResourcePointDTO] [rp_2] ON [aislerp].[ResourcePointId] = [rp_2].[Id]
						INNER JOIN [WmsLoadCarrierDTO] [r_2] ON [refS].[ResourceID] = [r_2].[Id]
						INNER JOIN [InventoryResourceDTO] [ir_6] ON [r_2].[Id] = [ir_6].[ResourceID]
				WHERE
					[ir_6].[MaterialID] = @Value_2 AND [ir_6].[ProductStatus] = 0 AND
					[ir_6].[Quantity] > 0
			) [t1]
		UNION
		SELECT
			[r_3].[Id] as [R],
			[r_3].[ResourcePointID] as [R_1],
			[ir_7].[Id] as [IR],
			[ir_7].[ProductStatus] as [IR_1],
			[ir_7].[Quantity] as [IR_2],
			[ir_7].[ResourceID] as [IR_3],
			[ir_7].[MaterialID] as [IR_4],
			[ir_7].[Status] as [IR_5],
			[rp_3].[Id] as [C_1],
			NULL as [SS],
			NULL as [SS_1],
			NULL as [SS_2],
			0 as [AisleStatus],
			NULL as [RP],
			[rp_3].[IsStoragePlace] as [RP_1],
			0 as [RefQty],
			0 as [MixedStock],
			NULL as [c1],
			NULL as [c2]
		FROM
			[WmsResourcePointDTO] [rp_3]
				INNER JOIN [WmsLoadCarrierDTO] [r_3] ON [rp_3].[Id] = [r_3].[ResourcePointID]
				INNER JOIN [InventoryResourceDTO] [ir_7] ON [r_3].[Id] = [ir_7].[ResourceID]
		WHERE
			[rp_3].[IsStoragePlace] = 1 AND
			[ir_7].[MaterialID] = @Value_3 AND
			[ir_7].[ProductStatus] = 0 AND
			[ir_7].[Quantity] > 0
	) [cr]
WHERE
	[cr].[IR_2] > [cr].[RefQty]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [WmsResourcePointDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [RefResPointAisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [AisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [ChannelDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [StorageShelfDTO]

