﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[ChannelDTO]', N'U') IS NULL)
	CREATE TABLE [ChannelDTO]
	(
		[Id]         Int              NOT NULL,
		[AisleID]    Int              NOT NULL,
		[MaterialID] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[InventoryResourceDTO]', N'U') IS NULL)
	CREATE TABLE [InventoryResourceDTO]
	(
		[Id]             UniqueIdentifier NOT NULL,
		[Status]         Int              NOT NULL,
		[ResourceID]     UniqueIdentifier NOT NULL,
		[ProductStatus]  Int              NOT NULL,
		[BatchNumber]    NVarChar(4000)       NULL,
		[BundleUnit]     Int              NOT NULL,
		[CustomField1]   Int              NOT NULL,
		[CustomField2]   Int              NOT NULL,
		[CustomField3]   Int              NOT NULL,
		[MaterialID]     UniqueIdentifier NOT NULL,
		[InfeedAdviceID] Int                  NULL,
		[ExpiryDate]     DateTime2        NOT NULL,
		[CustomDate1]    DateTime2        NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[MaterialDTO]', N'U') IS NULL)
	CREATE TABLE [MaterialDTO]
	(
		[Id]                    UniqueIdentifier NOT NULL,
		[MaterialNumber]        NVarChar(4000)       NULL,
		[MaterialDescription_1] NVarChar(4000)       NULL,
		[MaterialDescription_2] NVarChar(4000)       NULL,
		[MaterialDescription_3] NVarChar(4000)       NULL,
		[CategoryABC]           NVarChar(4000)       NULL,
		[CategoryCustoms]       NVarChar(4000)       NULL,
		[CategoryDimensions]    NVarChar(4000)       NULL,
		[CategoryQuality]       NVarChar(4000)       NULL,
		[CategoryTemperature]   NVarChar(4000)       NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NULL)
	CREATE TABLE [WmsLoadCarrierDTO]
	(
		[Id]            UniqueIdentifier NOT NULL,
		[Status]        Int              NOT NULL,
		[ResourceLabel] NVarChar(4000)       NULL,
		[CustomField1]  Int              NOT NULL,
		[CustomField2]  Int              NOT NULL,
		[CustomField3]  Int              NOT NULL,
		[CustomLong1]   Int              NOT NULL,
		[CustomLong2]   Int              NOT NULL,
		[CustomLong3]   Int              NOT NULL,
		[HeightClass]   Int              NOT NULL,
		[TypeID]        UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[RefResourceStorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [RefResourceStorageShelfDTO]
	(
		[Id]             Int              NOT NULL,
		[StorageShelfID] UniqueIdentifier NOT NULL,
		[ResourceID]     UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[AisleDTO]', N'U') IS NULL)
	CREATE TABLE [AisleDTO]
	(
		[Id]          Int            NOT NULL,
		[AisleNumber] Int            NOT NULL,
		[PlantID]     Int            NOT NULL,
		[Name]        NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[RefOutfeedTransportOrderResourceDTO]', N'U') IS NULL)
	CREATE TABLE [RefOutfeedTransportOrderResourceDTO]
	(
		[Id]         Int              NOT NULL,
		[ResourceID] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NULL)
	CREATE TABLE [InfeedAdvicePositionDTO]
	(
		[Id]               Int NOT NULL,
		[InfeedAdviceType] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [StorageShelfDTO]
	(
		[Id]              UniqueIdentifier NOT NULL,
		[ChannelID]       Int              NOT NULL,
		[Name]            NVarChar(4000)       NULL,
		[Status]          Int              NOT NULL,
		[AisleNumber]     Int              NOT NULL,
		[CategoryABC]     NVarChar(4000)       NULL,
		[HeightClass]     Int              NOT NULL,
		[DepthCoordinate] Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Empty UniqueIdentifier -- Guid
SET     @Empty = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_1 UniqueIdentifier -- Guid
SET     @Empty_1 = '00000000-0000-0000-0000-000000000000'

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
	IIF([a1].[Id] IS NOT NULL AND ([a1].[Id] <> @Empty OR [a1].[Id] IS NULL), 1, 0),
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
			[x_9].[Status] < 99 AND [x_9].[ResourceID] = [c1].[Id]
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
			[x_11].[Status] < 99 AND [x_11].[ResourceID] = [c1].[Id] AND
			([x_11].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y]
				WHERE
					[y].[Id] = [x_11].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 10
			))
	), 1, 0),
	IIF([a2].[Id] IS NOT NULL AND ([a2].[Id] <> @Empty_1 OR [a2].[Id] IS NULL), 1, 0),
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
			[x_12].[Status] < 99 AND [x_12].[ResourceID] = [c2].[Id]
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
			[x_14].[Status] < 99 AND [x_14].[ResourceID] = [c2].[Id] AND
			([x_14].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_1]
				WHERE
					[y_1].[Id] = [x_14].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 10
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
				[x].[Status] < 99 AND [x].[ResourceID] = [b1].[ResourceID]
		) = [i1].[Id] AND [i1].[Status] < 99
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
				[x_1].[Status] < 99 AND [x_1].[ResourceID] = [b2].[ResourceID]
		) = [i2].[Id] AND [i2].[Status] < 99
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
				[x_2].[Status] < 99 AND [x_2].[ResourceID] = [b3].[ResourceID]
		) = [i3].[Id] AND [i3].[Status] < 99
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
				[x_3].[Status] < 99 AND [x_3].[ResourceID] = [b4].[ResourceID]
		) = [i4].[Id] AND [i4].[Status] < 99
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
				[x_4].[Status] < 99 AND [x_4].[ResourceID] = [b5].[ResourceID]
		) = [i5].[Id] AND [i5].[Status] < 99
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
				[x_5].[Status] < 99 AND [x_5].[ResourceID] = [b6].[ResourceID]
		) = [i6].[Id] AND [i6].[Status] < 99
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
				[x_6].[Status] < 99 AND [x_6].[ResourceID] = [b7].[ResourceID]
		) = [i7].[Id] AND [i7].[Status] < 99
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
				[x_7].[Status] < 99 AND [x_7].[ResourceID] = [b8].[ResourceID]
		) = [i8].[Id] AND [i8].[Status] < 99
		LEFT JOIN [MaterialDTO] [m8] ON [i8].[MaterialID] = [m8].[Id]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [ChannelDTO]

