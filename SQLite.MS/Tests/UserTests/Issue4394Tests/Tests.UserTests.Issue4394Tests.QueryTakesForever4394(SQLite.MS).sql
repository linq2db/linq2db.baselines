BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AisleDTO]
(
	[Id]              INTEGER       NOT NULL,
	[AisleNumber]     INTEGER       NOT NULL,
	[PlantID]         INTEGER       NOT NULL,
	[Name]            NVarChar(255)     NULL,
	[StrippedDownDTO] Bit           NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ChannelDTO]
(
	[Id]         INTEGER NOT NULL,
	[AisleID]    INTEGER NOT NULL,
	[MaterialID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[Id]             INTEGER       NOT NULL,
	[InfeedAdviceID] INTEGER           NULL,
	[Quantity]       INTEGER       NOT NULL,
	[ResourceID]     INTEGER       NOT NULL,
	[MaterialID]     INTEGER       NOT NULL,
	[ProductStatus]  INTEGER       NOT NULL,
	[BatchNumber]    NVarChar(255)     NULL,
	[ExpiryDate]     DateTime2         NULL,
	[CustomDate1]    DateTime2         NULL,
	[Status]         INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MaterialDTO]
(
	[Id]                    INTEGER       NOT NULL,
	[MaterialNumber]        INTEGER       NOT NULL,
	[StrippedDownDTO]       Bit           NOT NULL,
	[MaterialDescription_1] NVarChar(255)     NULL,
	[MaterialDescription_2] NVarChar(255)     NULL,
	[MaterialDescription_3] NVarChar(255)     NULL,
	[CategoryABC]           NVarChar(255)     NULL,
	[CategoryCustoms]       NVarChar(255)     NULL,
	[CategoryDimensions]    NVarChar(255)     NULL,
	[CategoryQuality]       NVarChar(255)     NULL,
	[CategoryTemperature]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefOutfeedTransportOrderResourceDTO]
(
	[Id]         INTEGER NOT NULL,
	[ResourceID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]            INTEGER       NOT NULL,
	[ResourceLabel] NVarChar(255)     NULL,
	[Status]        INTEGER       NOT NULL,
	[CustomLong2]   BigInt        NOT NULL,
	[HeightClass]   INTEGER       NOT NULL,
	[TypeID]        INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [StorageShelfDTO]
(
	[Id]              Guid          NOT NULL,
	[ChannelID]       INTEGER       NOT NULL,
	[DepthCoordinate] INTEGER       NOT NULL,
	[Status]          INTEGER       NOT NULL,
	[Name]            NVarChar(255)     NULL,
	[HeightClass]     INTEGER       NOT NULL,
	[CategoryABC]     NVarChar(255)     NULL,
	[AisleNumber]     INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefResourceStorageShelfDTO]
(
	[Id]             INTEGER NOT NULL,
	[StorageShelfID] Guid    NOT NULL,
	[ResourceID]     INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InfeedAdvicePositionDTO]
(
	[Id]               INTEGER NOT NULL,
	[Nr]               INTEGER NOT NULL,
	[InfeedAdviceType] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Empty  -- Guid
SET     @Empty = X'00000000000000000000000000000000'

SELECT
	[x_16].[Id],
	[x_16].[AisleID],
	[x_16].[MaterialID],
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
	CASE
		WHEN [a1].[Id] IS NOT NULL AND ([a1].[Id] <> @Empty OR [a1].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_17]
		WHERE
			[x_17].[Status] < 0 AND [x_17].[ResourceID] = [c1].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_18]
			WHERE
				[x_18].[ResourceID] = [c1].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_19]
			WHERE
				[x_19].[Status] < 0 AND [x_19].[ResourceID] = [c1].[Id] AND
				([x_19].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y]
					WHERE
						[y].[Id] = [x_19].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END
FROM
	[ChannelDTO] [x_16]
		INNER JOIN [AisleDTO] [a] ON [x_16].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_16].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_16].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x].[ResourceID] ORDER BY [x].[ResourceID]) as [rn],
				[x].[ResourceID]
			FROM
				[InventoryResourceDTO] [x]
			WHERE
				[x].[Status] < 0
		) [t1] ON [t1].[ResourceID] = [b1].[ResourceID] AND [t1].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i1] ON (
			SELECT
				[x_1].[Id]
			FROM
				[InventoryResourceDTO] [x_1]
			WHERE
				[x_1].[Status] < 0 AND [x_1].[ResourceID] = [b1].[ResourceID]
			LIMIT 1
		) = [i1].[Id] AND [i1].[Status] < 0
		LEFT JOIN [MaterialDTO] [m1] ON [i1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_16].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_2].[ResourceID] ORDER BY [x_2].[ResourceID]) as [rn],
				[x_2].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_2]
			WHERE
				[x_2].[Status] < 0
		) [t2] ON [t2].[ResourceID] = [b2].[ResourceID] AND [t2].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i2] ON (
			SELECT
				[x_3].[Id]
			FROM
				[InventoryResourceDTO] [x_3]
			WHERE
				[x_3].[Status] < 0 AND [x_3].[ResourceID] = [b2].[ResourceID]
			LIMIT 1
		) = [i2].[Id] AND [i2].[Status] < 0
		LEFT JOIN [MaterialDTO] [m2] ON [i2].[MaterialID] = [m2].[Id]
		LEFT JOIN [StorageShelfDTO] [a3] ON [x_16].[Id] = [a3].[ChannelID] AND 3 = [a3].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3] ON [a3].[Id] = [b3].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3] ON [b3].[ResourceID] = [c3].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_4].[ResourceID] ORDER BY [x_4].[ResourceID]) as [rn],
				[x_4].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_4]
			WHERE
				[x_4].[Status] < 0
		) [t3] ON [t3].[ResourceID] = [b3].[ResourceID] AND [t3].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i3] ON (
			SELECT
				[x_5].[Id]
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 0 AND [x_5].[ResourceID] = [b3].[ResourceID]
			LIMIT 1
		) = [i3].[Id] AND [i3].[Status] < 0
		LEFT JOIN [MaterialDTO] [m3] ON [i3].[MaterialID] = [m3].[Id]
		LEFT JOIN [StorageShelfDTO] [a4] ON [x_16].[Id] = [a4].[ChannelID] AND 4 = [a4].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4] ON [a4].[Id] = [b4].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4] ON [b4].[ResourceID] = [c4].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_6].[ResourceID] ORDER BY [x_6].[ResourceID]) as [rn],
				[x_6].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_6]
			WHERE
				[x_6].[Status] < 0
		) [t4] ON [t4].[ResourceID] = [b4].[ResourceID] AND [t4].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i4] ON (
			SELECT
				[x_7].[Id]
			FROM
				[InventoryResourceDTO] [x_7]
			WHERE
				[x_7].[Status] < 0 AND [x_7].[ResourceID] = [b4].[ResourceID]
			LIMIT 1
		) = [i4].[Id] AND [i4].[Status] < 0
		LEFT JOIN [MaterialDTO] [m4] ON [i4].[MaterialID] = [m4].[Id]
		LEFT JOIN [StorageShelfDTO] [a5] ON [x_16].[Id] = [a5].[ChannelID] AND 5 = [a5].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5] ON [a5].[Id] = [b5].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5] ON [b5].[ResourceID] = [c5].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_8].[ResourceID] ORDER BY [x_8].[ResourceID]) as [rn],
				[x_8].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_8]
			WHERE
				[x_8].[Status] < 0
		) [t5] ON [t5].[ResourceID] = [b5].[ResourceID] AND [t5].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i5] ON (
			SELECT
				[x_9].[Id]
			FROM
				[InventoryResourceDTO] [x_9]
			WHERE
				[x_9].[Status] < 0 AND [x_9].[ResourceID] = [b5].[ResourceID]
			LIMIT 1
		) = [i5].[Id] AND [i5].[Status] < 0
		LEFT JOIN [MaterialDTO] [m5] ON [i5].[MaterialID] = [m5].[Id]
		LEFT JOIN [StorageShelfDTO] [a6] ON [x_16].[Id] = [a6].[ChannelID] AND 6 = [a6].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6] ON [a6].[Id] = [b6].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6] ON [b6].[ResourceID] = [c6].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_10].[ResourceID] ORDER BY [x_10].[ResourceID]) as [rn],
				[x_10].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_10]
			WHERE
				[x_10].[Status] < 0
		) [t6] ON [t6].[ResourceID] = [b6].[ResourceID] AND [t6].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i6] ON (
			SELECT
				[x_11].[Id]
			FROM
				[InventoryResourceDTO] [x_11]
			WHERE
				[x_11].[Status] < 0 AND [x_11].[ResourceID] = [b6].[ResourceID]
			LIMIT 1
		) = [i6].[Id] AND [i6].[Status] < 0
		LEFT JOIN [MaterialDTO] [m6] ON [i6].[MaterialID] = [m6].[Id]
		LEFT JOIN [StorageShelfDTO] [a7] ON [x_16].[Id] = [a7].[ChannelID] AND 7 = [a7].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7] ON [a7].[Id] = [b7].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7] ON [b7].[ResourceID] = [c7].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_12].[ResourceID] ORDER BY [x_12].[ResourceID]) as [rn],
				[x_12].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_12]
			WHERE
				[x_12].[Status] < 0
		) [t7] ON [t7].[ResourceID] = [b7].[ResourceID] AND [t7].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i7] ON (
			SELECT
				[x_13].[Id]
			FROM
				[InventoryResourceDTO] [x_13]
			WHERE
				[x_13].[Status] < 0 AND [x_13].[ResourceID] = [b7].[ResourceID]
			LIMIT 1
		) = [i7].[Id] AND [i7].[Status] < 0
		LEFT JOIN [MaterialDTO] [m7] ON [i7].[MaterialID] = [m7].[Id]
		LEFT JOIN [StorageShelfDTO] [a8] ON [x_16].[Id] = [a8].[ChannelID] AND 8 = [a8].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8] ON [a8].[Id] = [b8].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8] ON [b8].[ResourceID] = [c8].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_14].[ResourceID] ORDER BY [x_14].[ResourceID]) as [rn],
				[x_14].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_14]
			WHERE
				[x_14].[Status] < 0
		) [t8] ON [t8].[ResourceID] = [b8].[ResourceID] AND [t8].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i8] ON (
			SELECT
				[x_15].[Id]
			FROM
				[InventoryResourceDTO] [x_15]
			WHERE
				[x_15].[Status] < 0 AND [x_15].[ResourceID] = [b8].[ResourceID]
			LIMIT 1
		) = [i8].[Id] AND [i8].[Status] < 0
		LEFT JOIN [MaterialDTO] [m8] ON [i8].[MaterialID] = [m8].[Id]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Empty  -- Guid
SET     @Empty = X'00000000000000000000000000000000'

SELECT
	[x_16].[Id],
	[x_16].[AisleID],
	[x_16].[MaterialID],
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
	CASE
		WHEN [a1].[Id] IS NOT NULL AND ([a1].[Id] <> @Empty OR [a1].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_17]
		WHERE
			[x_17].[Status] < 0 AND [x_17].[ResourceID] = [c1].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_18]
			WHERE
				[x_18].[ResourceID] = [c1].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_19]
			WHERE
				[x_19].[Status] < 0 AND [x_19].[ResourceID] = [c1].[Id] AND
				([x_19].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y]
					WHERE
						[y].[Id] = [x_19].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a2].[Id] IS NOT NULL AND ([a2].[Id] <> @Empty OR [a2].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_20]
		WHERE
			[x_20].[Status] < 0 AND [x_20].[ResourceID] = [c2].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_21]
			WHERE
				[x_21].[ResourceID] = [c2].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_22]
			WHERE
				[x_22].[Status] < 0 AND [x_22].[ResourceID] = [c2].[Id] AND
				([x_22].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_1]
					WHERE
						[y_1].[Id] = [x_22].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a3].[Id] IS NOT NULL AND ([a3].[Id] <> @Empty OR [a3].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_23]
		WHERE
			[x_23].[Status] < 0 AND [x_23].[ResourceID] = [c3].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_24]
			WHERE
				[x_24].[ResourceID] = [c3].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_25]
			WHERE
				[x_25].[Status] < 0 AND [x_25].[ResourceID] = [c3].[Id] AND
				([x_25].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_2]
					WHERE
						[y_2].[Id] = [x_25].[InfeedAdviceID] AND [y_2].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a4].[Id] IS NOT NULL AND ([a4].[Id] <> @Empty OR [a4].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_26]
		WHERE
			[x_26].[Status] < 0 AND [x_26].[ResourceID] = [c4].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_27]
			WHERE
				[x_27].[ResourceID] = [c4].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_28]
			WHERE
				[x_28].[Status] < 0 AND [x_28].[ResourceID] = [c4].[Id] AND
				([x_28].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_3]
					WHERE
						[y_3].[Id] = [x_28].[InfeedAdviceID] AND [y_3].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a5].[Id] IS NOT NULL AND ([a5].[Id] <> @Empty OR [a5].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_29]
		WHERE
			[x_29].[Status] < 0 AND [x_29].[ResourceID] = [c5].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_30]
			WHERE
				[x_30].[ResourceID] = [c5].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_31]
			WHERE
				[x_31].[Status] < 0 AND [x_31].[ResourceID] = [c5].[Id] AND
				([x_31].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_4]
					WHERE
						[y_4].[Id] = [x_31].[InfeedAdviceID] AND [y_4].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a6].[Id] IS NOT NULL AND ([a6].[Id] <> @Empty OR [a6].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_32]
		WHERE
			[x_32].[Status] < 0 AND [x_32].[ResourceID] = [c6].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_33]
			WHERE
				[x_33].[ResourceID] = [c6].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_34]
			WHERE
				[x_34].[Status] < 0 AND [x_34].[ResourceID] = [c6].[Id] AND
				([x_34].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_5]
					WHERE
						[y_5].[Id] = [x_34].[InfeedAdviceID] AND [y_5].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a7].[Id] IS NOT NULL AND ([a7].[Id] <> @Empty OR [a7].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_35]
		WHERE
			[x_35].[Status] < 0 AND [x_35].[ResourceID] = [c7].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_36]
			WHERE
				[x_36].[ResourceID] = [c7].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_37]
			WHERE
				[x_37].[Status] < 0 AND [x_37].[ResourceID] = [c7].[Id] AND
				([x_37].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_6]
					WHERE
						[y_6].[Id] = [x_37].[InfeedAdviceID] AND [y_6].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a8].[Id] IS NOT NULL AND ([a8].[Id] <> @Empty OR [a8].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
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
			[InventoryResourceDTO] [x_38]
		WHERE
			[x_38].[Status] < 0 AND [x_38].[ResourceID] = [c8].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_39]
			WHERE
				[x_39].[ResourceID] = [c8].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_40]
			WHERE
				[x_40].[Status] < 0 AND [x_40].[ResourceID] = [c8].[Id] AND
				([x_40].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_7]
					WHERE
						[y_7].[Id] = [x_40].[InfeedAdviceID] AND [y_7].[InfeedAdviceType] = 0
				))
		)
			THEN 1
		ELSE 0
	END
FROM
	[ChannelDTO] [x_16]
		INNER JOIN [AisleDTO] [a] ON [x_16].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_16].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_16].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x].[ResourceID] ORDER BY [x].[ResourceID]) as [rn],
				[x].[ResourceID]
			FROM
				[InventoryResourceDTO] [x]
			WHERE
				[x].[Status] < 0
		) [t1] ON [t1].[ResourceID] = [b1].[ResourceID] AND [t1].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i1] ON (
			SELECT
				[x_1].[Id]
			FROM
				[InventoryResourceDTO] [x_1]
			WHERE
				[x_1].[Status] < 0 AND [x_1].[ResourceID] = [b1].[ResourceID]
			LIMIT 1
		) = [i1].[Id] AND [i1].[Status] < 0
		LEFT JOIN [MaterialDTO] [m1] ON [i1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_16].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_2].[ResourceID] ORDER BY [x_2].[ResourceID]) as [rn],
				[x_2].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_2]
			WHERE
				[x_2].[Status] < 0
		) [t2] ON [t2].[ResourceID] = [b2].[ResourceID] AND [t2].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i2] ON (
			SELECT
				[x_3].[Id]
			FROM
				[InventoryResourceDTO] [x_3]
			WHERE
				[x_3].[Status] < 0 AND [x_3].[ResourceID] = [b2].[ResourceID]
			LIMIT 1
		) = [i2].[Id] AND [i2].[Status] < 0
		LEFT JOIN [MaterialDTO] [m2] ON [i2].[MaterialID] = [m2].[Id]
		LEFT JOIN [StorageShelfDTO] [a3] ON [x_16].[Id] = [a3].[ChannelID] AND 3 = [a3].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3] ON [a3].[Id] = [b3].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3] ON [b3].[ResourceID] = [c3].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_4].[ResourceID] ORDER BY [x_4].[ResourceID]) as [rn],
				[x_4].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_4]
			WHERE
				[x_4].[Status] < 0
		) [t3] ON [t3].[ResourceID] = [b3].[ResourceID] AND [t3].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i3] ON (
			SELECT
				[x_5].[Id]
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 0 AND [x_5].[ResourceID] = [b3].[ResourceID]
			LIMIT 1
		) = [i3].[Id] AND [i3].[Status] < 0
		LEFT JOIN [MaterialDTO] [m3] ON [i3].[MaterialID] = [m3].[Id]
		LEFT JOIN [StorageShelfDTO] [a4] ON [x_16].[Id] = [a4].[ChannelID] AND 4 = [a4].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4] ON [a4].[Id] = [b4].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4] ON [b4].[ResourceID] = [c4].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_6].[ResourceID] ORDER BY [x_6].[ResourceID]) as [rn],
				[x_6].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_6]
			WHERE
				[x_6].[Status] < 0
		) [t4] ON [t4].[ResourceID] = [b4].[ResourceID] AND [t4].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i4] ON (
			SELECT
				[x_7].[Id]
			FROM
				[InventoryResourceDTO] [x_7]
			WHERE
				[x_7].[Status] < 0 AND [x_7].[ResourceID] = [b4].[ResourceID]
			LIMIT 1
		) = [i4].[Id] AND [i4].[Status] < 0
		LEFT JOIN [MaterialDTO] [m4] ON [i4].[MaterialID] = [m4].[Id]
		LEFT JOIN [StorageShelfDTO] [a5] ON [x_16].[Id] = [a5].[ChannelID] AND 5 = [a5].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5] ON [a5].[Id] = [b5].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5] ON [b5].[ResourceID] = [c5].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_8].[ResourceID] ORDER BY [x_8].[ResourceID]) as [rn],
				[x_8].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_8]
			WHERE
				[x_8].[Status] < 0
		) [t5] ON [t5].[ResourceID] = [b5].[ResourceID] AND [t5].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i5] ON (
			SELECT
				[x_9].[Id]
			FROM
				[InventoryResourceDTO] [x_9]
			WHERE
				[x_9].[Status] < 0 AND [x_9].[ResourceID] = [b5].[ResourceID]
			LIMIT 1
		) = [i5].[Id] AND [i5].[Status] < 0
		LEFT JOIN [MaterialDTO] [m5] ON [i5].[MaterialID] = [m5].[Id]
		LEFT JOIN [StorageShelfDTO] [a6] ON [x_16].[Id] = [a6].[ChannelID] AND 6 = [a6].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6] ON [a6].[Id] = [b6].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6] ON [b6].[ResourceID] = [c6].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_10].[ResourceID] ORDER BY [x_10].[ResourceID]) as [rn],
				[x_10].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_10]
			WHERE
				[x_10].[Status] < 0
		) [t6] ON [t6].[ResourceID] = [b6].[ResourceID] AND [t6].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i6] ON (
			SELECT
				[x_11].[Id]
			FROM
				[InventoryResourceDTO] [x_11]
			WHERE
				[x_11].[Status] < 0 AND [x_11].[ResourceID] = [b6].[ResourceID]
			LIMIT 1
		) = [i6].[Id] AND [i6].[Status] < 0
		LEFT JOIN [MaterialDTO] [m6] ON [i6].[MaterialID] = [m6].[Id]
		LEFT JOIN [StorageShelfDTO] [a7] ON [x_16].[Id] = [a7].[ChannelID] AND 7 = [a7].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7] ON [a7].[Id] = [b7].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7] ON [b7].[ResourceID] = [c7].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_12].[ResourceID] ORDER BY [x_12].[ResourceID]) as [rn],
				[x_12].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_12]
			WHERE
				[x_12].[Status] < 0
		) [t7] ON [t7].[ResourceID] = [b7].[ResourceID] AND [t7].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i7] ON (
			SELECT
				[x_13].[Id]
			FROM
				[InventoryResourceDTO] [x_13]
			WHERE
				[x_13].[Status] < 0 AND [x_13].[ResourceID] = [b7].[ResourceID]
			LIMIT 1
		) = [i7].[Id] AND [i7].[Status] < 0
		LEFT JOIN [MaterialDTO] [m7] ON [i7].[MaterialID] = [m7].[Id]
		LEFT JOIN [StorageShelfDTO] [a8] ON [x_16].[Id] = [a8].[ChannelID] AND 8 = [a8].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8] ON [a8].[Id] = [b8].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8] ON [b8].[ResourceID] = [c8].[Id]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [x_14].[ResourceID] ORDER BY [x_14].[ResourceID]) as [rn],
				[x_14].[ResourceID]
			FROM
				[InventoryResourceDTO] [x_14]
			WHERE
				[x_14].[Status] < 0
		) [t8] ON [t8].[ResourceID] = [b8].[ResourceID] AND [t8].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i8] ON (
			SELECT
				[x_15].[Id]
			FROM
				[InventoryResourceDTO] [x_15]
			WHERE
				[x_15].[Status] < 0 AND [x_15].[ResourceID] = [b8].[ResourceID]
			LIMIT 1
		) = [i8].[Id] AND [i8].[Status] < 0
		LEFT JOIN [MaterialDTO] [m8] ON [i8].[MaterialID] = [m8].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AisleDTO]

