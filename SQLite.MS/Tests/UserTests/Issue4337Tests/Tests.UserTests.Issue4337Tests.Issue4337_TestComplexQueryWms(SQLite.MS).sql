BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ChannelDTO]
(
	[Id]         INTEGER NOT NULL,
	[AisleID]    INTEGER NOT NULL,
	[MaterialID] Guid    NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[Id]             Guid          NOT NULL,
	[Status]         INTEGER       NOT NULL,
	[ResourceID]     Guid          NOT NULL,
	[ProductStatus]  INTEGER       NOT NULL,
	[BatchNumber]    NVarChar(255)     NULL,
	[BundleUnit]     INTEGER       NOT NULL,
	[CustomField1]   INTEGER       NOT NULL,
	[CustomField2]   INTEGER       NOT NULL,
	[CustomField3]   INTEGER       NOT NULL,
	[MaterialID]     Guid          NOT NULL,
	[InfeedAdviceID] INTEGER           NULL,
	[ExpiryDate]     DateTime2     NOT NULL,
	[CustomDate1]    DateTime2     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MaterialDTO]
(
	[Id]                    Guid          NOT NULL,
	[MaterialNumber]        NVarChar(255)     NULL,
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

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]            Guid          NOT NULL,
	[Status]        INTEGER       NOT NULL,
	[ResourceLabel] NVarChar(255)     NULL,
	[CustomField1]  INTEGER       NOT NULL,
	[CustomField2]  INTEGER       NOT NULL,
	[CustomField3]  INTEGER       NOT NULL,
	[CustomLong1]   INTEGER       NOT NULL,
	[CustomLong2]   INTEGER       NOT NULL,
	[CustomLong3]   INTEGER       NOT NULL,
	[HeightClass]   INTEGER       NOT NULL,
	[TypeID]        Guid          NOT NULL
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
	[ResourceID]     Guid    NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AisleDTO]
(
	[Id]          INTEGER       NOT NULL,
	[AisleNumber] INTEGER       NOT NULL,
	[PlantID]     INTEGER       NOT NULL,
	[Name]        NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RefOutfeedTransportOrderResourceDTO]
(
	[Id]         INTEGER NOT NULL,
	[ResourceID] Guid    NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InfeedAdvicePositionDTO]
(
	[Id]               INTEGER NOT NULL,
	[InfeedAdviceType] INTEGER NOT NULL
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
	[Name]            NVarChar(255)     NULL,
	[Status]          INTEGER       NOT NULL,
	[AisleNumber]     INTEGER       NOT NULL,
	[CategoryABC]     NVarChar(255)     NULL,
	[HeightClass]     INTEGER       NOT NULL,
	[DepthCoordinate] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
		WHEN [a1].[Id] IS NOT NULL AND ([a1].[Id] <> X'00000000000000000000000000000000' OR [a1].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
	[a1].[Id],
	[c1].[Id],
	[c1].[ResourceLabel],
	[c1].[Status],
	CAST([c1].[CustomLong2] AS BigInt),
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
			[x_17].[ResourceID] = [c1].[Id] AND [x_17].[Status] < 99
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
				[x_19].[Status] < 99 AND [x_19].[ResourceID] = [c1].[Id] AND
				([x_19].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y]
					WHERE
						[y].[Id] = [x_19].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 10
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a2].[Id] IS NOT NULL AND ([a2].[Id] <> X'00000000000000000000000000000000' OR [a2].[Id] IS NULL)
			THEN 1
		ELSE 0
	END,
	[a2].[Id],
	[c2].[Id],
	[c2].[ResourceLabel],
	[c2].[Status],
	CAST([c2].[CustomLong2] AS BigInt),
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
			[x_20].[ResourceID] = [c2].[Id] AND [x_20].[Status] < 99
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
				[x_22].[Status] < 99 AND [x_22].[ResourceID] = [c2].[Id] AND
				([x_22].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_1]
					WHERE
						[y_1].[Id] = [x_22].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 10
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
				[x].[Status] < 99
		) [t1] ON [t1].[ResourceID] = [b1].[ResourceID] AND [t1].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i1] ON (
			SELECT
				[x_1].[Id]
			FROM
				[InventoryResourceDTO] [x_1]
			WHERE
				[x_1].[Status] < 99 AND [x_1].[ResourceID] = [b1].[ResourceID]
			LIMIT 1
		) = [i1].[Id] AND [i1].[Status] < 99
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
				[x_2].[Status] < 99
		) [t2] ON [t2].[ResourceID] = [b2].[ResourceID] AND [t2].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i2] ON (
			SELECT
				[x_3].[Id]
			FROM
				[InventoryResourceDTO] [x_3]
			WHERE
				[x_3].[Status] < 99 AND [x_3].[ResourceID] = [b2].[ResourceID]
			LIMIT 1
		) = [i2].[Id] AND [i2].[Status] < 99
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
				[x_4].[Status] < 99
		) [t3] ON [t3].[ResourceID] = [b3].[ResourceID] AND [t3].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i3] ON (
			SELECT
				[x_5].[Id]
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 99 AND [x_5].[ResourceID] = [b3].[ResourceID]
			LIMIT 1
		) = [i3].[Id] AND [i3].[Status] < 99
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
				[x_6].[Status] < 99
		) [t4] ON [t4].[ResourceID] = [b4].[ResourceID] AND [t4].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i4] ON (
			SELECT
				[x_7].[Id]
			FROM
				[InventoryResourceDTO] [x_7]
			WHERE
				[x_7].[Status] < 99 AND [x_7].[ResourceID] = [b4].[ResourceID]
			LIMIT 1
		) = [i4].[Id] AND [i4].[Status] < 99
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
				[x_8].[Status] < 99
		) [t5] ON [t5].[ResourceID] = [b5].[ResourceID] AND [t5].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i5] ON (
			SELECT
				[x_9].[Id]
			FROM
				[InventoryResourceDTO] [x_9]
			WHERE
				[x_9].[Status] < 99 AND [x_9].[ResourceID] = [b5].[ResourceID]
			LIMIT 1
		) = [i5].[Id] AND [i5].[Status] < 99
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
				[x_10].[Status] < 99
		) [t6] ON [t6].[ResourceID] = [b6].[ResourceID] AND [t6].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i6] ON (
			SELECT
				[x_11].[Id]
			FROM
				[InventoryResourceDTO] [x_11]
			WHERE
				[x_11].[Status] < 99 AND [x_11].[ResourceID] = [b6].[ResourceID]
			LIMIT 1
		) = [i6].[Id] AND [i6].[Status] < 99
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
				[x_12].[Status] < 99
		) [t7] ON [t7].[ResourceID] = [b7].[ResourceID] AND [t7].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i7] ON (
			SELECT
				[x_13].[Id]
			FROM
				[InventoryResourceDTO] [x_13]
			WHERE
				[x_13].[Status] < 99 AND [x_13].[ResourceID] = [b7].[ResourceID]
			LIMIT 1
		) = [i7].[Id] AND [i7].[Status] < 99
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
				[x_14].[Status] < 99
		) [t8] ON [t8].[ResourceID] = [b8].[ResourceID] AND [t8].[rn] <= 1
		LEFT JOIN [InventoryResourceDTO] [i8] ON (
			SELECT
				[x_15].[Id]
			FROM
				[InventoryResourceDTO] [x_15]
			WHERE
				[x_15].[Status] < 99 AND [x_15].[ResourceID] = [b8].[ResourceID]
			LIMIT 1
		) = [i8].[Id] AND [i8].[Status] < 99
		LEFT JOIN [MaterialDTO] [m8] ON [i8].[MaterialID] = [m8].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChannelDTO]

