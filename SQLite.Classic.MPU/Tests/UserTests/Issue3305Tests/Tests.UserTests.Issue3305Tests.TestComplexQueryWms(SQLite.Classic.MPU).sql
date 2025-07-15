BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[ChannelDTO]
(
	[Id]         INTEGER NOT NULL,
	[AisleID]    INTEGER NOT NULL,
	[MaterialID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[RefResourceStorageShelfDTO]
(
	[Id]             INTEGER NOT NULL,
	[StorageShelfID] INTEGER NOT NULL,
	[ResourceID]     INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[AisleDTO]
(
	[Id]          INTEGER       NOT NULL,
	[AisleNumber] INTEGER       NOT NULL,
	[PlantID]     INTEGER       NOT NULL,
	[Name]        NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[RefOutfeedTransportOrderResourceDTO]
(
	[Id]         INTEGER NOT NULL,
	[ResourceID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[InfeedAdvicePositionDTO]
(
	[Id]               INTEGER NOT NULL,
	[InfeedAdviceType] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[StorageShelfDTO]
(
	[Id]              INTEGER NOT NULL,
	[ChannelID]       INTEGER NOT NULL,
	[Status]          INTEGER NOT NULL,
	[CategoryABC]     INTEGER NOT NULL,
	[HeightClass]     INTEGER NOT NULL,
	[DepthCoordinate] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
	[x].[Id_1],
	[x].[AisleNumber],
	[x].[PlantID],
	[x].[Name],
	[x].[Id_2],
	[x].[MaterialNumber],
	[x].[MaterialDescription_1],
	[x].[MaterialDescription_2],
	[x].[MaterialDescription_3],
	[x].[CategoryABC],
	[x].[CategoryCustoms],
	[x].[CategoryDimensions],
	[x].[CategoryQuality],
	[x].[CategoryTemperature],
	[x].[cond],
	[x].[Id_3],
	[x].[Status],
	[x].[ResourceLabel],
	[x].[CustomField1],
	[x].[CustomField2],
	[x].[CustomField3],
	[x].[CustomLong1],
	[x].[CustomLong2],
	[x].[CustomLong3],
	[x].[Id_4],
	[x].[MaterialNumber_1],
	[x].[MaterialDescription_1_1],
	[x].[MaterialDescription_2_1],
	[x].[MaterialDescription_3_1],
	[x].[CategoryABC_1],
	[x].[CategoryCustoms_1],
	[x].[CategoryDimensions_1],
	[x].[CategoryQuality_1],
	[x].[CategoryTemperature_1],
	[x].[Id_5],
	[x].[BatchNumber],
	[x].[BundleUnit],
	[x].[ProductStatus],
	[x].[CustomField1_1],
	[x].[CustomField2_1],
	[x].[CustomField3_1],
	[x].[Status_1],
	[x].[CategoryABC_2],
	[x].[HeightClass],
	[x].[Count_1],
	[x].[CountLocked],
	EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_1]
		WHERE
			[x_1].[ResourceID] = [x].[Id_3]
	),
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [x_2]
		WHERE
			[x_2].[IR_ResourceID] = [x].[Id_3] AND ([x_2].[IR_InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y]
				WHERE
					[y].[Id] = [x_2].[IR_InfeedAdviceID] AND [y].[InfeedAdviceType] = 1
			))
	)
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[AisleID],
			[t1].[MaterialID],
			[t1].[Id_1],
			[t1].[AisleNumber],
			[t1].[PlantID],
			[t1].[Name],
			[t1].[Id_2],
			[t1].[MaterialNumber],
			[t1].[MaterialDescription_1],
			[t1].[MaterialDescription_2],
			[t1].[MaterialDescription_3],
			[t1].[CategoryABC],
			[t1].[CategoryCustoms],
			[t1].[CategoryDimensions],
			[t1].[CategoryQuality],
			[t1].[CategoryTemperature],
			[t1].[cond],
			[i1].[Count_1],
			[c1].[Id] as [Id_3],
			[c1].[Status],
			[c1].[ResourceLabel],
			[c1].[CustomField1],
			[c1].[CustomField2],
			[c1].[CustomField3],
			[c1].[CustomLong1],
			[c1].[CustomLong2],
			[c1].[CustomLong3],
			[m1].[Id] as [Id_4],
			[m1].[MaterialNumber] as [MaterialNumber_1],
			[m1].[MaterialDescription_1] as [MaterialDescription_1_1],
			[m1].[MaterialDescription_2] as [MaterialDescription_2_1],
			[m1].[MaterialDescription_3] as [MaterialDescription_3_1],
			[m1].[CategoryABC] as [CategoryABC_1],
			[m1].[CategoryCustoms] as [CategoryCustoms_1],
			[m1].[CategoryDimensions] as [CategoryDimensions_1],
			[m1].[CategoryQuality] as [CategoryQuality_1],
			[m1].[CategoryTemperature] as [CategoryTemperature_1],
			[i1].[IR_Id] as [Id_5],
			[i1].[IR_BatchNumber] as [BatchNumber],
			[i1].[IR_BundleUnit] as [BundleUnit],
			[i1].[IR_ProductStatus] as [ProductStatus],
			[i1].[IR_CustomField1] as [CustomField1_1],
			[i1].[IR_CustomField2] as [CustomField2_1],
			[i1].[IR_CustomField3] as [CustomField3_1],
			[t1].[Status] as [Status_1],
			[t1].[CategoryABC_1] as [CategoryABC_2],
			[t1].[HeightClass],
			[i1].[CountLocked],
			(
				SELECT
					[b2].[ResourceID]
				FROM
					[RefResourceStorageShelfDTO] [b2]
				WHERE
					[a2].[Id] = [b2].[StorageShelfID]
			) as [ResourceID]
		FROM
			(
				SELECT
					[c_1].[Id],
					[c_1].[AisleID],
					[c_1].[MaterialID],
					[a].[Id] as [Id_1],
					[a].[AisleNumber],
					[a].[PlantID],
					[a].[Name],
					[m_1].[Id] as [Id_2],
					[m_1].[MaterialNumber],
					[m_1].[MaterialDescription_1],
					[m_1].[MaterialDescription_2],
					[m_1].[MaterialDescription_3],
					[m_1].[CategoryABC],
					[m_1].[CategoryCustoms],
					[m_1].[CategoryDimensions],
					[m_1].[CategoryQuality],
					[m_1].[CategoryTemperature],
					[a1].[Id] as [cond],
					[a1].[Status],
					[a1].[CategoryABC] as [CategoryABC_1],
					[a1].[HeightClass],
					(
						SELECT
							[b1].[ResourceID]
						FROM
							[RefResourceStorageShelfDTO] [b1]
						WHERE
							[a1].[Id] = [b1].[StorageShelfID]
					) as [ResourceID]
				FROM
					[ChannelDTO] [c_1]
						INNER JOIN [AisleDTO] [a] ON [c_1].[AisleID] = [a].[Id]
						LEFT JOIN [MaterialDTO] [m_1] ON [c_1].[MaterialID] = [m_1].[Id]
						LEFT JOIN [StorageShelfDTO] [a1] ON [c_1].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
			) [t1]
				LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [c1].[Id] = [t1].[ResourceID]
				LEFT JOIN [CTE_1] [i1] ON [i1].[IR_ResourceID] = [t1].[ResourceID] AND [i1].[RN] = 1
				LEFT JOIN [MaterialDTO] [m1] ON [m1].[Id] = [i1].[IR_MaterialID]
				LEFT JOIN [StorageShelfDTO] [a2] ON [t1].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
	) [x]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[StorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[AisleDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[RefResourceStorageShelfDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[MaterialDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[ChannelDTO]

