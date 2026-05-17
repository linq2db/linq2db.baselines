-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[ChannelDTO]
(
	[Id]         INTEGER NOT NULL,
	[AisleID]    INTEGER NOT NULL,
	[MaterialID] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[InventoryResourceDTO]
(
	[Id]             INTEGER NOT NULL,
	[Status]         INTEGER NOT NULL,
	[ResourceID]     INTEGER NOT NULL,
	[ProductStatus]  INTEGER NOT NULL,
	[BatchNumber]    INTEGER NOT NULL,
	[BundleUnit]     INTEGER NOT NULL,
	[CustomField1]   INTEGER NOT NULL,
	[CustomField2]   INTEGER NOT NULL,
	[CustomField3]   INTEGER NOT NULL,
	[MaterialID]     INTEGER NOT NULL,
	[InfeedAdviceID] INTEGER     NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[MaterialDTO]
(
	[Id]                    INTEGER       NOT NULL,
	[MaterialNumber]        INTEGER       NOT NULL,
	[MaterialDescription_1] NVarChar(255)     NULL,
	[MaterialDescription_2] NVarChar(255)     NULL,
	[MaterialDescription_3] NVarChar(255)     NULL,
	[CategoryABC]           NVarChar(255)     NULL,
	[CategoryCustoms]       NVarChar(255)     NULL,
	[CategoryDimensions]    NVarChar(255)     NULL,
	[CategoryQuality]       NVarChar(255)     NULL,
	[CategoryTemperature]   NVarChar(255)     NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[WmsLoadCarrierDTO]
(
	[Id]            INTEGER NOT NULL,
	[Status]        INTEGER NOT NULL,
	[ResourceLabel] INTEGER NOT NULL,
	[CustomField1]  INTEGER NOT NULL,
	[CustomField2]  INTEGER NOT NULL,
	[CustomField3]  INTEGER NOT NULL,
	[CustomLong1]   INTEGER NOT NULL,
	[CustomLong2]   INTEGER NOT NULL,
	[CustomLong3]   INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[RefResourceStorageShelfDTO]
(
	[Id]             INTEGER NOT NULL,
	[StorageShelfID] INTEGER NOT NULL,
	[ResourceID]     INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[AisleDTO]
(
	[Id]          INTEGER       NOT NULL,
	[AisleNumber] INTEGER       NOT NULL,
	[PlantID]     INTEGER       NOT NULL,
	[Name]        NVarChar(255)     NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[RefOutfeedTransportOrderResourceDTO]
(
	[Id]         INTEGER NOT NULL,
	[ResourceID] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[InfeedAdvicePositionDTO]
(
	[Id]               INTEGER NOT NULL,
	[InfeedAdviceType] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[StorageShelfDTO]
(
	[Id]              INTEGER NOT NULL,
	[ChannelID]       INTEGER NOT NULL,
	[Status]          INTEGER NOT NULL,
	[CategoryABC]     INTEGER NOT NULL,
	[HeightClass]     INTEGER NOT NULL,
	[DepthCoordinate] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [CTE_1]
(
	[IR_ResourceID],
	[RN],
	[IR_MaterialID],
	[IR_InfeedAdviceID],
	[Count_1],
	[CountLocked],
	[IR_Id],
	[IR_ProductStatus],
	[IR_BatchNumber],
	[IR_BundleUnit],
	[IR_CustomField1],
	[IR_CustomField2],
	[IR_CustomField3]
)
AS
(
	SELECT
		[ir].[ResourceID],
		ROW_NUMBER() OVER(PARTITION BY [ir].[ResourceID] ORDER BY [ir].[ResourceID]),
		[ir].[MaterialID],
		[ir].[InfeedAdviceID],
		COUNT(*) OVER(PARTITION BY [ir].[ResourceID]),
		COUNT(([ir].[ProductStatus] > 0)) OVER(PARTITION BY [ir].[ResourceID]),
		[ir].[Id],
		[ir].[ProductStatus],
		[ir].[BatchNumber],
		[ir].[BundleUnit],
		[ir].[CustomField1],
		[ir].[CustomField2],
		[ir].[CustomField3]
	FROM
		[InventoryResourceDTO] [ir]
	WHERE
		[ir].[Status] < 99
)
SELECT
	[x].[Id],
	[x].[AisleID],
	[x].[MaterialID],
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
	[a1].[Id],
	[c1].[Id],
	[c1].[Status],
	[c1].[ResourceLabel],
	[c1].[CustomField1],
	[c1].[CustomField2],
	[c1].[CustomField3],
	[c1].[CustomLong1],
	[c1].[CustomLong2],
	[c1].[CustomLong3],
	[m1].[Id],
	[m1].[MaterialNumber],
	[m1].[MaterialDescription_1],
	[m1].[MaterialDescription_2],
	[m1].[MaterialDescription_3],
	[m1].[CategoryABC],
	[m1].[CategoryCustoms],
	[m1].[CategoryDimensions],
	[m1].[CategoryQuality],
	[m1].[CategoryTemperature],
	[i1].[IR_Id],
	[i1].[IR_BatchNumber],
	[i1].[IR_BundleUnit],
	[i1].[IR_ProductStatus],
	[i1].[IR_CustomField1],
	[i1].[IR_CustomField2],
	[i1].[IR_CustomField3],
	[a1].[Status],
	[a1].[CategoryABC],
	[a1].[HeightClass],
	[i1].[Count_1],
	[i1].[CountLocked],
	EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_1]
		WHERE
			[x_1].[ResourceID] = [c1].[Id]
	),
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [x_2]
		WHERE
			[x_2].[IR_ResourceID] = [c1].[Id] AND ([x_2].[IR_InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y]
				WHERE
					[y].[Id] = [x_2].[IR_InfeedAdviceID] AND [y].[InfeedAdviceType] = 1
			))
	)
FROM
	[ChannelDTO] [x]
		INNER JOIN [AisleDTO] [a] ON [x].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [c1].[Id] = [b1].[ResourceID]
		LEFT JOIN [CTE_1] [i1] ON [i1].[IR_ResourceID] = [b1].[ResourceID] AND [i1].[RN] = 1
		LEFT JOIN [MaterialDTO] [m1] ON [m1].[Id] = [i1].[IR_MaterialID]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[StorageShelfDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[InfeedAdvicePositionDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[RefOutfeedTransportOrderResourceDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[AisleDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[RefResourceStorageShelfDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[WmsLoadCarrierDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[MaterialDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[InventoryResourceDTO]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[ChannelDTO]

