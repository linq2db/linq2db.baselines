BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x_8].[Id],
	[x_8].[AisleID],
	[x_8].[MaterialID],
	[a].[Id],
	[a].[AisleNumber],
	[a].[PlantID],
	[a].[Name],
	[m_1].[Id],
	[m_1].[MaterialNumber],
	[m_1].[MaterialDescription_1],
	[m_1].[MaterialDescription_2],
	[m_1].[MaterialDescription_3],
	[m_1].[CategoryABC],
	[m_1].[CategoryCustoms],
	[m_1].[CategoryDimensions],
	[m_1].[CategoryQuality],
	[m_1].[CategoryTemperature],
	IIF([a1].[Id] IS NOT NULL AND ([a1].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a1].[Id] IS NULL), 1, 0),
	[a1].[Id],
	[c1].[Id],
	[c1].[ResourceLabel],
	[c1].[Status],
	[c1].[CustomLong2],
	[c1].[HeightClass],
	[c1].[TypeID],
	[m1].[Id],
	[m1].[MaterialNumber],
	[m1].[MaterialDescription_1],
	[m1].[CategoryABC],
	[a1].[Status],
	[a1].[Name],
	[a1].[HeightClass],
	[a1].[CategoryABC],
	[a1].[AisleNumber],
	[i1].[Id],
	[i1].[BatchNumber],
	[i1].[ProductStatus],
	[i1].[ExpiryDate],
	[i1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_9]
		WHERE
			[x_9].[Status] < 0 AND [x_9].[ResourceID] = [c1].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_10]
		WHERE
			[x_10].[ResourceID] = [c1].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_11]
		WHERE
			[x_11].[Status] < 0 AND [x_11].[ResourceID] = [c1].[Id] AND
			([x_11].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y]
				WHERE
					[y].[Id] = [x_11].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 0
			))
	), 1, 0)
FROM
	[ChannelDTO] [x_8]
		INNER JOIN [AisleDTO] [a] ON [x_8].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_8].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_8].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		LEFT JOIN [InventoryResourceDTO] [i1] ON (
			SELECT TOP (1)
				[x].[Id]
			FROM
				[InventoryResourceDTO] [x]
			WHERE
				[x].[Status] < 0 AND [x].[ResourceID] = [b1].[ResourceID]
		) = [i1].[Id] AND [i1].[Status] < 0
		LEFT JOIN [MaterialDTO] [m1] ON [i1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_8].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		LEFT JOIN [InventoryResourceDTO] [i2] ON (
			SELECT TOP (1)
				[x_1].[Id]
			FROM
				[InventoryResourceDTO] [x_1]
			WHERE
				[x_1].[Status] < 0 AND [x_1].[ResourceID] = [b2].[ResourceID]
		) = [i2].[Id] AND [i2].[Status] < 0
		LEFT JOIN [MaterialDTO] [m2] ON [i2].[MaterialID] = [m2].[Id]
		LEFT JOIN [StorageShelfDTO] [a3] ON [x_8].[Id] = [a3].[ChannelID] AND 3 = [a3].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3] ON [a3].[Id] = [b3].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3] ON [b3].[ResourceID] = [c3].[Id]
		LEFT JOIN [InventoryResourceDTO] [i3] ON (
			SELECT TOP (1)
				[x_2].[Id]
			FROM
				[InventoryResourceDTO] [x_2]
			WHERE
				[x_2].[Status] < 0 AND [x_2].[ResourceID] = [b3].[ResourceID]
		) = [i3].[Id] AND [i3].[Status] < 0
		LEFT JOIN [MaterialDTO] [m3] ON [i3].[MaterialID] = [m3].[Id]
		LEFT JOIN [StorageShelfDTO] [a4] ON [x_8].[Id] = [a4].[ChannelID] AND 4 = [a4].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4] ON [a4].[Id] = [b4].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4] ON [b4].[ResourceID] = [c4].[Id]
		LEFT JOIN [InventoryResourceDTO] [i4] ON (
			SELECT TOP (1)
				[x_3].[Id]
			FROM
				[InventoryResourceDTO] [x_3]
			WHERE
				[x_3].[Status] < 0 AND [x_3].[ResourceID] = [b4].[ResourceID]
		) = [i4].[Id] AND [i4].[Status] < 0
		LEFT JOIN [MaterialDTO] [m4] ON [i4].[MaterialID] = [m4].[Id]
		LEFT JOIN [StorageShelfDTO] [a5] ON [x_8].[Id] = [a5].[ChannelID] AND 5 = [a5].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5] ON [a5].[Id] = [b5].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5] ON [b5].[ResourceID] = [c5].[Id]
		LEFT JOIN [InventoryResourceDTO] [i5] ON (
			SELECT TOP (1)
				[x_4].[Id]
			FROM
				[InventoryResourceDTO] [x_4]
			WHERE
				[x_4].[Status] < 0 AND [x_4].[ResourceID] = [b5].[ResourceID]
		) = [i5].[Id] AND [i5].[Status] < 0
		LEFT JOIN [MaterialDTO] [m5] ON [i5].[MaterialID] = [m5].[Id]
		LEFT JOIN [StorageShelfDTO] [a6] ON [x_8].[Id] = [a6].[ChannelID] AND 6 = [a6].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6] ON [a6].[Id] = [b6].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6] ON [b6].[ResourceID] = [c6].[Id]
		LEFT JOIN [InventoryResourceDTO] [i6] ON (
			SELECT TOP (1)
				[x_5].[Id]
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 0 AND [x_5].[ResourceID] = [b6].[ResourceID]
		) = [i6].[Id] AND [i6].[Status] < 0
		LEFT JOIN [MaterialDTO] [m6] ON [i6].[MaterialID] = [m6].[Id]
		LEFT JOIN [StorageShelfDTO] [a7] ON [x_8].[Id] = [a7].[ChannelID] AND 7 = [a7].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7] ON [a7].[Id] = [b7].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7] ON [b7].[ResourceID] = [c7].[Id]
		LEFT JOIN [InventoryResourceDTO] [i7] ON (
			SELECT TOP (1)
				[x_6].[Id]
			FROM
				[InventoryResourceDTO] [x_6]
			WHERE
				[x_6].[Status] < 0 AND [x_6].[ResourceID] = [b7].[ResourceID]
		) = [i7].[Id] AND [i7].[Status] < 0
		LEFT JOIN [MaterialDTO] [m7] ON [i7].[MaterialID] = [m7].[Id]
		LEFT JOIN [StorageShelfDTO] [a8] ON [x_8].[Id] = [a8].[ChannelID] AND 8 = [a8].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8] ON [a8].[Id] = [b8].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8] ON [b8].[ResourceID] = [c8].[Id]
		LEFT JOIN [InventoryResourceDTO] [i8] ON (
			SELECT TOP (1)
				[x_7].[Id]
			FROM
				[InventoryResourceDTO] [x_7]
			WHERE
				[x_7].[Status] < 0 AND [x_7].[ResourceID] = [b8].[ResourceID]
		) = [i8].[Id] AND [i8].[Status] < 0
		LEFT JOIN [MaterialDTO] [m8] ON [i8].[MaterialID] = [m8].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x_8].[Id],
	[x_8].[AisleID],
	[x_8].[MaterialID],
	[a].[Id],
	[a].[AisleNumber],
	[a].[PlantID],
	[a].[Name],
	[m_1].[Id],
	[m_1].[MaterialNumber],
	[m_1].[MaterialDescription_1],
	[m_1].[MaterialDescription_2],
	[m_1].[MaterialDescription_3],
	[m_1].[CategoryABC],
	[m_1].[CategoryCustoms],
	[m_1].[CategoryDimensions],
	[m_1].[CategoryQuality],
	[m_1].[CategoryTemperature],
	IIF([a1].[Id] IS NOT NULL AND ([a1].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a1].[Id] IS NULL), 1, 0),
	[a1].[Id],
	[c1].[Id],
	[c1].[ResourceLabel],
	[c1].[Status],
	[c1].[CustomLong2],
	[c1].[HeightClass],
	[c1].[TypeID],
	[m1].[Id],
	[m1].[MaterialNumber],
	[m1].[MaterialDescription_1],
	[m1].[CategoryABC],
	[a1].[Status],
	[a1].[Name],
	[a1].[HeightClass],
	[a1].[CategoryABC],
	[a1].[AisleNumber],
	[i1].[Id],
	[i1].[BatchNumber],
	[i1].[ProductStatus],
	[i1].[ExpiryDate],
	[i1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_9]
		WHERE
			[x_9].[Status] < 0 AND [x_9].[ResourceID] = [c1].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_10]
		WHERE
			[x_10].[ResourceID] = [c1].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_11]
		WHERE
			[x_11].[Status] < 0 AND [x_11].[ResourceID] = [c1].[Id] AND
			([x_11].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y]
				WHERE
					[y].[Id] = [x_11].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a2].[Id] IS NOT NULL AND ([a2].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a2].[Id] IS NULL), 1, 0),
	[a2].[Id],
	[c2].[Id],
	[c2].[ResourceLabel],
	[c2].[Status],
	[c2].[CustomLong2],
	[c2].[HeightClass],
	[c2].[TypeID],
	[m2].[Id],
	[m2].[MaterialNumber],
	[m2].[MaterialDescription_1],
	[m2].[CategoryABC],
	[a2].[Status],
	[a2].[Name],
	[a2].[HeightClass],
	[a2].[CategoryABC],
	[a2].[AisleNumber],
	[i2].[Id],
	[i2].[BatchNumber],
	[i2].[ProductStatus],
	[i2].[ExpiryDate],
	[i2].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_12]
		WHERE
			[x_12].[Status] < 0 AND [x_12].[ResourceID] = [c2].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_13]
		WHERE
			[x_13].[ResourceID] = [c2].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_14]
		WHERE
			[x_14].[Status] < 0 AND [x_14].[ResourceID] = [c2].[Id] AND
			([x_14].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_1]
				WHERE
					[y_1].[Id] = [x_14].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a3].[Id] IS NOT NULL AND ([a3].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a3].[Id] IS NULL), 1, 0),
	[a3].[Id],
	[c3].[Id],
	[c3].[ResourceLabel],
	[c3].[Status],
	[c3].[CustomLong2],
	[c3].[HeightClass],
	[c3].[TypeID],
	[m3].[Id],
	[m3].[MaterialNumber],
	[m3].[MaterialDescription_1],
	[m3].[CategoryABC],
	[a3].[Status],
	[a3].[Name],
	[a3].[HeightClass],
	[a3].[CategoryABC],
	[a3].[AisleNumber],
	[i3].[Id],
	[i3].[BatchNumber],
	[i3].[ProductStatus],
	[i3].[ExpiryDate],
	[i3].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_15]
		WHERE
			[x_15].[Status] < 0 AND [x_15].[ResourceID] = [c3].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_16]
		WHERE
			[x_16].[ResourceID] = [c3].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_17]
		WHERE
			[x_17].[Status] < 0 AND [x_17].[ResourceID] = [c3].[Id] AND
			([x_17].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_2]
				WHERE
					[y_2].[Id] = [x_17].[InfeedAdviceID] AND [y_2].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a4].[Id] IS NOT NULL AND ([a4].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a4].[Id] IS NULL), 1, 0),
	[a4].[Id],
	[c4].[Id],
	[c4].[ResourceLabel],
	[c4].[Status],
	[c4].[CustomLong2],
	[c4].[HeightClass],
	[c4].[TypeID],
	[m4].[Id],
	[m4].[MaterialNumber],
	[m4].[MaterialDescription_1],
	[m4].[CategoryABC],
	[a4].[Status],
	[a4].[Name],
	[a4].[HeightClass],
	[a4].[CategoryABC],
	[a4].[AisleNumber],
	[i4].[Id],
	[i4].[BatchNumber],
	[i4].[ProductStatus],
	[i4].[ExpiryDate],
	[i4].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_18]
		WHERE
			[x_18].[Status] < 0 AND [x_18].[ResourceID] = [c4].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_19]
		WHERE
			[x_19].[ResourceID] = [c4].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_20]
		WHERE
			[x_20].[Status] < 0 AND [x_20].[ResourceID] = [c4].[Id] AND
			([x_20].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_3]
				WHERE
					[y_3].[Id] = [x_20].[InfeedAdviceID] AND [y_3].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a5].[Id] IS NOT NULL AND ([a5].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a5].[Id] IS NULL), 1, 0),
	[a5].[Id],
	[c5].[Id],
	[c5].[ResourceLabel],
	[c5].[Status],
	[c5].[CustomLong2],
	[c5].[HeightClass],
	[c5].[TypeID],
	[m5].[Id],
	[m5].[MaterialNumber],
	[m5].[MaterialDescription_1],
	[m5].[CategoryABC],
	[a5].[Status],
	[a5].[Name],
	[a5].[HeightClass],
	[a5].[CategoryABC],
	[a5].[AisleNumber],
	[i5].[Id],
	[i5].[BatchNumber],
	[i5].[ProductStatus],
	[i5].[ExpiryDate],
	[i5].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_21]
		WHERE
			[x_21].[Status] < 0 AND [x_21].[ResourceID] = [c5].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_22]
		WHERE
			[x_22].[ResourceID] = [c5].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_23]
		WHERE
			[x_23].[Status] < 0 AND [x_23].[ResourceID] = [c5].[Id] AND
			([x_23].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_4]
				WHERE
					[y_4].[Id] = [x_23].[InfeedAdviceID] AND [y_4].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a6].[Id] IS NOT NULL AND ([a6].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a6].[Id] IS NULL), 1, 0),
	[a6].[Id],
	[c6].[Id],
	[c6].[ResourceLabel],
	[c6].[Status],
	[c6].[CustomLong2],
	[c6].[HeightClass],
	[c6].[TypeID],
	[m6].[Id],
	[m6].[MaterialNumber],
	[m6].[MaterialDescription_1],
	[m6].[CategoryABC],
	[a6].[Status],
	[a6].[Name],
	[a6].[HeightClass],
	[a6].[CategoryABC],
	[a6].[AisleNumber],
	[i6].[Id],
	[i6].[BatchNumber],
	[i6].[ProductStatus],
	[i6].[ExpiryDate],
	[i6].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_24]
		WHERE
			[x_24].[Status] < 0 AND [x_24].[ResourceID] = [c6].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_25]
		WHERE
			[x_25].[ResourceID] = [c6].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_26]
		WHERE
			[x_26].[Status] < 0 AND [x_26].[ResourceID] = [c6].[Id] AND
			([x_26].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_5]
				WHERE
					[y_5].[Id] = [x_26].[InfeedAdviceID] AND [y_5].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a7].[Id] IS NOT NULL AND ([a7].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a7].[Id] IS NULL), 1, 0),
	[a7].[Id],
	[c7].[Id],
	[c7].[ResourceLabel],
	[c7].[Status],
	[c7].[CustomLong2],
	[c7].[HeightClass],
	[c7].[TypeID],
	[m7].[Id],
	[m7].[MaterialNumber],
	[m7].[MaterialDescription_1],
	[m7].[CategoryABC],
	[a7].[Status],
	[a7].[Name],
	[a7].[HeightClass],
	[a7].[CategoryABC],
	[a7].[AisleNumber],
	[i7].[Id],
	[i7].[BatchNumber],
	[i7].[ProductStatus],
	[i7].[ExpiryDate],
	[i7].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_27]
		WHERE
			[x_27].[Status] < 0 AND [x_27].[ResourceID] = [c7].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_28]
		WHERE
			[x_28].[ResourceID] = [c7].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_29]
		WHERE
			[x_29].[Status] < 0 AND [x_29].[ResourceID] = [c7].[Id] AND
			([x_29].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_6]
				WHERE
					[y_6].[Id] = [x_29].[InfeedAdviceID] AND [y_6].[InfeedAdviceType] = 0
			))
	), 1, 0),
	IIF([a8].[Id] IS NOT NULL AND ([a8].[Id] <> '00000000-0000-0000-0000-000000000000' OR [a8].[Id] IS NULL), 1, 0),
	[a8].[Id],
	[c8].[Id],
	[c8].[ResourceLabel],
	[c8].[Status],
	[c8].[CustomLong2],
	[c8].[HeightClass],
	[c8].[TypeID],
	[m8].[Id],
	[m8].[MaterialNumber],
	[m8].[MaterialDescription_1],
	[m8].[CategoryABC],
	[a8].[Status],
	[a8].[Name],
	[a8].[HeightClass],
	[a8].[CategoryABC],
	[a8].[AisleNumber],
	[i8].[Id],
	[i8].[BatchNumber],
	[i8].[ProductStatus],
	[i8].[ExpiryDate],
	[i8].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_30]
		WHERE
			[x_30].[Status] < 0 AND [x_30].[ResourceID] = [c8].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_31]
		WHERE
			[x_31].[ResourceID] = [c8].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_32]
		WHERE
			[x_32].[Status] < 0 AND [x_32].[ResourceID] = [c8].[Id] AND
			([x_32].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_7]
				WHERE
					[y_7].[Id] = [x_32].[InfeedAdviceID] AND [y_7].[InfeedAdviceType] = 0
			))
	), 1, 0)
FROM
	[ChannelDTO] [x_8]
		INNER JOIN [AisleDTO] [a] ON [x_8].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_8].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_8].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		LEFT JOIN [InventoryResourceDTO] [i1] ON (
			SELECT TOP (1)
				[x].[Id]
			FROM
				[InventoryResourceDTO] [x]
			WHERE
				[x].[Status] < 0 AND [x].[ResourceID] = [b1].[ResourceID]
		) = [i1].[Id] AND [i1].[Status] < 0
		LEFT JOIN [MaterialDTO] [m1] ON [i1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_8].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		LEFT JOIN [InventoryResourceDTO] [i2] ON (
			SELECT TOP (1)
				[x_1].[Id]
			FROM
				[InventoryResourceDTO] [x_1]
			WHERE
				[x_1].[Status] < 0 AND [x_1].[ResourceID] = [b2].[ResourceID]
		) = [i2].[Id] AND [i2].[Status] < 0
		LEFT JOIN [MaterialDTO] [m2] ON [i2].[MaterialID] = [m2].[Id]
		LEFT JOIN [StorageShelfDTO] [a3] ON [x_8].[Id] = [a3].[ChannelID] AND 3 = [a3].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3] ON [a3].[Id] = [b3].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3] ON [b3].[ResourceID] = [c3].[Id]
		LEFT JOIN [InventoryResourceDTO] [i3] ON (
			SELECT TOP (1)
				[x_2].[Id]
			FROM
				[InventoryResourceDTO] [x_2]
			WHERE
				[x_2].[Status] < 0 AND [x_2].[ResourceID] = [b3].[ResourceID]
		) = [i3].[Id] AND [i3].[Status] < 0
		LEFT JOIN [MaterialDTO] [m3] ON [i3].[MaterialID] = [m3].[Id]
		LEFT JOIN [StorageShelfDTO] [a4] ON [x_8].[Id] = [a4].[ChannelID] AND 4 = [a4].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4] ON [a4].[Id] = [b4].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4] ON [b4].[ResourceID] = [c4].[Id]
		LEFT JOIN [InventoryResourceDTO] [i4] ON (
			SELECT TOP (1)
				[x_3].[Id]
			FROM
				[InventoryResourceDTO] [x_3]
			WHERE
				[x_3].[Status] < 0 AND [x_3].[ResourceID] = [b4].[ResourceID]
		) = [i4].[Id] AND [i4].[Status] < 0
		LEFT JOIN [MaterialDTO] [m4] ON [i4].[MaterialID] = [m4].[Id]
		LEFT JOIN [StorageShelfDTO] [a5] ON [x_8].[Id] = [a5].[ChannelID] AND 5 = [a5].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5] ON [a5].[Id] = [b5].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5] ON [b5].[ResourceID] = [c5].[Id]
		LEFT JOIN [InventoryResourceDTO] [i5] ON (
			SELECT TOP (1)
				[x_4].[Id]
			FROM
				[InventoryResourceDTO] [x_4]
			WHERE
				[x_4].[Status] < 0 AND [x_4].[ResourceID] = [b5].[ResourceID]
		) = [i5].[Id] AND [i5].[Status] < 0
		LEFT JOIN [MaterialDTO] [m5] ON [i5].[MaterialID] = [m5].[Id]
		LEFT JOIN [StorageShelfDTO] [a6] ON [x_8].[Id] = [a6].[ChannelID] AND 6 = [a6].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6] ON [a6].[Id] = [b6].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6] ON [b6].[ResourceID] = [c6].[Id]
		LEFT JOIN [InventoryResourceDTO] [i6] ON (
			SELECT TOP (1)
				[x_5].[Id]
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 0 AND [x_5].[ResourceID] = [b6].[ResourceID]
		) = [i6].[Id] AND [i6].[Status] < 0
		LEFT JOIN [MaterialDTO] [m6] ON [i6].[MaterialID] = [m6].[Id]
		LEFT JOIN [StorageShelfDTO] [a7] ON [x_8].[Id] = [a7].[ChannelID] AND 7 = [a7].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7] ON [a7].[Id] = [b7].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7] ON [b7].[ResourceID] = [c7].[Id]
		LEFT JOIN [InventoryResourceDTO] [i7] ON (
			SELECT TOP (1)
				[x_6].[Id]
			FROM
				[InventoryResourceDTO] [x_6]
			WHERE
				[x_6].[Status] < 0 AND [x_6].[ResourceID] = [b7].[ResourceID]
		) = [i7].[Id] AND [i7].[Status] < 0
		LEFT JOIN [MaterialDTO] [m7] ON [i7].[MaterialID] = [m7].[Id]
		LEFT JOIN [StorageShelfDTO] [a8] ON [x_8].[Id] = [a8].[ChannelID] AND 8 = [a8].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8] ON [a8].[Id] = [b8].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8] ON [b8].[ResourceID] = [c8].[Id]
		LEFT JOIN [InventoryResourceDTO] [i8] ON (
			SELECT TOP (1)
				[x_7].[Id]
			FROM
				[InventoryResourceDTO] [x_7]
			WHERE
				[x_7].[Status] < 0 AND [x_7].[ResourceID] = [b8].[ResourceID]
		) = [i8].[Id] AND [i8].[Status] < 0
		LEFT JOIN [MaterialDTO] [m8] ON [i8].[MaterialID] = [m8].[Id]

