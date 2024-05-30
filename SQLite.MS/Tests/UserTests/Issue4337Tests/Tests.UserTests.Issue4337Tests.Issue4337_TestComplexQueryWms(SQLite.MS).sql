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
DECLARE @Empty  -- Guid
SET     @Empty = X'00000000000000000000000000000000'
DECLARE @Empty_1  -- Guid
SET     @Empty_1 = X'00000000000000000000000000000000'

SELECT
	[x_2].[Id],
	[x_2].[AisleID],
	[x_2].[MaterialID],
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
			[InventoryResourceDTO] [x_3]
		WHERE
			[x_3].[Status] < 99 AND [x_3].[ResourceID] = [c1].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_4]
			WHERE
				[x_4].[ResourceID] = [c1].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 99 AND [x_5].[ResourceID] = [c1].[Id] AND
				([x_5].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y]
					WHERE
						[y].[Id] = [x_5].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 10
				))
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a2].[Id] IS NOT NULL AND ([a2].[Id] <> @Empty_1 OR [a2].[Id] IS NULL)
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
			[InventoryResourceDTO] [x_6]
		WHERE
			[x_6].[Status] < 99 AND [x_6].[ResourceID] = [c2].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_7]
			WHERE
				[x_7].[ResourceID] = [c2].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[InventoryResourceDTO] [x_8]
			WHERE
				[x_8].[Status] < 99 AND [x_8].[ResourceID] = [c2].[Id] AND
				([x_8].[InfeedAdviceID] IS NULL OR EXISTS(
					SELECT
						*
					FROM
						[InfeedAdvicePositionDTO] [y_1]
					WHERE
						[y_1].[Id] = [x_8].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 10
				))
		)
			THEN 1
		ELSE 0
	END
FROM
	[ChannelDTO] [x_2]
		INNER JOIN [AisleDTO] [a] ON [x_2].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_2].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_2].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		LEFT JOIN [InventoryResourceDTO] [i1] ON (
			SELECT
				[x].[Id]
			FROM
				[InventoryResourceDTO] [x]
			WHERE
				[x].[Status] < 99 AND [x].[ResourceID] = [b1].[ResourceID]
			LIMIT 1
		) = [i1].[Id] AND [i1].[Status] < 99
		LEFT JOIN [MaterialDTO] [m1] ON [i1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_2].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		LEFT JOIN [InventoryResourceDTO] [i2] ON (
			SELECT
				[x_1].[Id]
			FROM
				[InventoryResourceDTO] [x_1]
			WHERE
				[x_1].[Status] < 99 AND [x_1].[ResourceID] = [b2].[ResourceID]
			LIMIT 1
		) = [i2].[Id] AND [i2].[Status] < 99
		LEFT JOIN [MaterialDTO] [m2] ON [i2].[MaterialID] = [m2].[Id]

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

