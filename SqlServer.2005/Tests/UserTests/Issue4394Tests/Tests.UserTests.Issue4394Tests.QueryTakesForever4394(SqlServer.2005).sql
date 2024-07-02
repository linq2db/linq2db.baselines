﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AisleDTO]', N'U') IS NOT NULL)
	DROP TABLE [AisleDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AisleDTO]', N'U') IS NULL)
	CREATE TABLE [AisleDTO]
	(
		[Id]              Int            NOT NULL,
		[AisleNumber]     Int            NOT NULL,
		[PlantID]         Int            NOT NULL,
		[Name]            NVarChar(4000)     NULL,
		[StrippedDownDTO] Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ChannelDTO]', N'U') IS NOT NULL)
	DROP TABLE [ChannelDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ChannelDTO]', N'U') IS NULL)
	CREATE TABLE [ChannelDTO]
	(
		[Id]         Int NOT NULL,
		[AisleID]    Int NOT NULL,
		[MaterialID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InventoryResourceDTO]', N'U') IS NOT NULL)
	DROP TABLE [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InventoryResourceDTO]', N'U') IS NULL)
	CREATE TABLE [InventoryResourceDTO]
	(
		[Id]             Int            NOT NULL,
		[InfeedAdviceID] Int                NULL,
		[Quantity]       Int            NOT NULL,
		[ResourceID]     Int            NOT NULL,
		[MaterialID]     Int            NOT NULL,
		[ProductStatus]  Int            NOT NULL,
		[BatchNumber]    NVarChar(4000)     NULL,
		[ExpiryDate]     DateTime           NULL,
		[CustomDate1]    DateTime           NULL,
		[Status]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MaterialDTO]', N'U') IS NOT NULL)
	DROP TABLE [MaterialDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MaterialDTO]', N'U') IS NULL)
	CREATE TABLE [MaterialDTO]
	(
		[Id]                    Int            NOT NULL,
		[MaterialNumber]        Int            NOT NULL,
		[StrippedDownDTO]       Bit            NOT NULL,
		[MaterialDescription_1] NVarChar(4000)     NULL,
		[MaterialDescription_2] NVarChar(4000)     NULL,
		[MaterialDescription_3] NVarChar(4000)     NULL,
		[CategoryABC]           NVarChar(4000)     NULL,
		[CategoryCustoms]       NVarChar(4000)     NULL,
		[CategoryDimensions]    NVarChar(4000)     NULL,
		[CategoryQuality]       NVarChar(4000)     NULL,
		[CategoryTemperature]   NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[RefOutfeedTransportOrderResourceDTO]', N'U') IS NOT NULL)
	DROP TABLE [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[RefOutfeedTransportOrderResourceDTO]', N'U') IS NULL)
	CREATE TABLE [RefOutfeedTransportOrderResourceDTO]
	(
		[Id]         Int NOT NULL,
		[ResourceID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NULL)
	CREATE TABLE [WmsLoadCarrierDTO]
	(
		[Id]            Int            NOT NULL,
		[ResourceLabel] NVarChar(4000)     NULL,
		[Status]        Int            NOT NULL,
		[CustomLong2]   BigInt         NOT NULL,
		[HeightClass]   Int            NOT NULL,
		[TypeID]        Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [StorageShelfDTO]
	(
		[Id]              UniqueIdentifier NOT NULL,
		[ChannelID]       Int              NOT NULL,
		[DepthCoordinate] Int              NOT NULL,
		[Status]          Int              NOT NULL,
		[Name]            NVarChar(4000)       NULL,
		[HeightClass]     Int              NOT NULL,
		[CategoryABC]     NVarChar(4000)       NULL,
		[AisleNumber]     Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[RefResourceStorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[RefResourceStorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [RefResourceStorageShelfDTO]
	(
		[Id]             Int              NOT NULL,
		[StorageShelfID] UniqueIdentifier NOT NULL,
		[ResourceID]     Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NULL)
	CREATE TABLE [InfeedAdvicePositionDTO]
	(
		[Id]               Int NOT NULL,
		[Nr]               Int NOT NULL,
		[InfeedAdviceType] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Empty UniqueIdentifier -- Guid
SET     @Empty = '00000000-0000-0000-0000-000000000000'

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
	[i1_1].[Id],
	[i1_1].[BatchNumber],
	[i1_1].[ProductStatus],
	[i1_1].[ExpiryDate],
	[i1_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_9]
		WHERE
			[x_9].[Status] < 0 AND [x_9].[ResourceID] = [c1].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_10]
			WHERE
				[x_10].[ResourceID] = [c1].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END
FROM
	[ChannelDTO] [x_8]
		INNER JOIN [AisleDTO] [a] ON [x_8].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_8].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_8].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		OUTER APPLY (
			SELECT
				[i1].[Id],
				[i1].[BatchNumber],
				[i1].[ProductStatus],
				[i1].[ExpiryDate],
				[i1].[CustomDate1],
				[i1].[MaterialID]
			FROM
				[InventoryResourceDTO] [i1]
					INNER JOIN (
						SELECT
							[x].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x].[ResourceID] ORDER BY [x].[ResourceID]) as [rn],
							[x].[ResourceID]
						FROM
							[InventoryResourceDTO] [x]
						WHERE
							[x].[Status] < 0
					) [t1] ON [t1].[ResourceID] = [b1].[ResourceID] AND [t1].[rn] <= 1
			WHERE
				[i1].[Status] < 0 AND [t1].[Id] = [i1].[Id]
		) [i1_1]
		LEFT JOIN [MaterialDTO] [m1] ON [i1_1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_8].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		OUTER APPLY (
			SELECT
				[i2].[MaterialID]
			FROM
				[InventoryResourceDTO] [i2]
					INNER JOIN (
						SELECT
							[x_1].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_1].[ResourceID] ORDER BY [x_1].[ResourceID]) as [rn],
							[x_1].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_1]
						WHERE
							[x_1].[Status] < 0
					) [t2] ON [t2].[ResourceID] = [b2].[ResourceID] AND [t2].[rn] <= 1
			WHERE
				[i2].[Status] < 0 AND [t2].[Id] = [i2].[Id]
		) [i2_1]
		LEFT JOIN [MaterialDTO] [m2] ON [i2_1].[MaterialID] = [m2].[Id]
		LEFT JOIN [StorageShelfDTO] [a3] ON [x_8].[Id] = [a3].[ChannelID] AND 3 = [a3].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3] ON [a3].[Id] = [b3].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3] ON [b3].[ResourceID] = [c3].[Id]
		OUTER APPLY (
			SELECT
				[i3].[MaterialID]
			FROM
				[InventoryResourceDTO] [i3]
					INNER JOIN (
						SELECT
							[x_2].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_2].[ResourceID] ORDER BY [x_2].[ResourceID]) as [rn],
							[x_2].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_2]
						WHERE
							[x_2].[Status] < 0
					) [t3] ON [t3].[ResourceID] = [b3].[ResourceID] AND [t3].[rn] <= 1
			WHERE
				[i3].[Status] < 0 AND [t3].[Id] = [i3].[Id]
		) [i3_1]
		LEFT JOIN [MaterialDTO] [m3] ON [i3_1].[MaterialID] = [m3].[Id]
		LEFT JOIN [StorageShelfDTO] [a4] ON [x_8].[Id] = [a4].[ChannelID] AND 4 = [a4].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4] ON [a4].[Id] = [b4].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4] ON [b4].[ResourceID] = [c4].[Id]
		OUTER APPLY (
			SELECT
				[i4].[MaterialID]
			FROM
				[InventoryResourceDTO] [i4]
					INNER JOIN (
						SELECT
							[x_3].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_3].[ResourceID] ORDER BY [x_3].[ResourceID]) as [rn],
							[x_3].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_3]
						WHERE
							[x_3].[Status] < 0
					) [t4] ON [t4].[ResourceID] = [b4].[ResourceID] AND [t4].[rn] <= 1
			WHERE
				[i4].[Status] < 0 AND [t4].[Id] = [i4].[Id]
		) [i4_1]
		LEFT JOIN [MaterialDTO] [m4] ON [i4_1].[MaterialID] = [m4].[Id]
		LEFT JOIN [StorageShelfDTO] [a5] ON [x_8].[Id] = [a5].[ChannelID] AND 5 = [a5].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5] ON [a5].[Id] = [b5].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5] ON [b5].[ResourceID] = [c5].[Id]
		OUTER APPLY (
			SELECT
				[i5].[MaterialID]
			FROM
				[InventoryResourceDTO] [i5]
					INNER JOIN (
						SELECT
							[x_4].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_4].[ResourceID] ORDER BY [x_4].[ResourceID]) as [rn],
							[x_4].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_4]
						WHERE
							[x_4].[Status] < 0
					) [t5] ON [t5].[ResourceID] = [b5].[ResourceID] AND [t5].[rn] <= 1
			WHERE
				[i5].[Status] < 0 AND [t5].[Id] = [i5].[Id]
		) [i5_1]
		LEFT JOIN [MaterialDTO] [m5] ON [i5_1].[MaterialID] = [m5].[Id]
		LEFT JOIN [StorageShelfDTO] [a6] ON [x_8].[Id] = [a6].[ChannelID] AND 6 = [a6].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6] ON [a6].[Id] = [b6].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6] ON [b6].[ResourceID] = [c6].[Id]
		OUTER APPLY (
			SELECT
				[i6].[MaterialID]
			FROM
				[InventoryResourceDTO] [i6]
					INNER JOIN (
						SELECT
							[x_5].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_5].[ResourceID] ORDER BY [x_5].[ResourceID]) as [rn],
							[x_5].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_5]
						WHERE
							[x_5].[Status] < 0
					) [t6] ON [t6].[ResourceID] = [b6].[ResourceID] AND [t6].[rn] <= 1
			WHERE
				[i6].[Status] < 0 AND [t6].[Id] = [i6].[Id]
		) [i6_1]
		LEFT JOIN [MaterialDTO] [m6] ON [i6_1].[MaterialID] = [m6].[Id]
		LEFT JOIN [StorageShelfDTO] [a7] ON [x_8].[Id] = [a7].[ChannelID] AND 7 = [a7].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7] ON [a7].[Id] = [b7].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7] ON [b7].[ResourceID] = [c7].[Id]
		OUTER APPLY (
			SELECT
				[i7].[MaterialID]
			FROM
				[InventoryResourceDTO] [i7]
					INNER JOIN (
						SELECT
							[x_6].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_6].[ResourceID] ORDER BY [x_6].[ResourceID]) as [rn],
							[x_6].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_6]
						WHERE
							[x_6].[Status] < 0
					) [t7] ON [t7].[ResourceID] = [b7].[ResourceID] AND [t7].[rn] <= 1
			WHERE
				[i7].[Status] < 0 AND [t7].[Id] = [i7].[Id]
		) [i7_1]
		LEFT JOIN [MaterialDTO] [m7] ON [i7_1].[MaterialID] = [m7].[Id]
		LEFT JOIN [StorageShelfDTO] [a8] ON [x_8].[Id] = [a8].[ChannelID] AND 8 = [a8].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8] ON [a8].[Id] = [b8].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8] ON [b8].[ResourceID] = [c8].[Id]
		OUTER APPLY (
			SELECT
				[i8].[MaterialID]
			FROM
				[InventoryResourceDTO] [i8]
					INNER JOIN (
						SELECT
							[x_7].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_7].[ResourceID] ORDER BY [x_7].[ResourceID]) as [rn],
							[x_7].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_7]
						WHERE
							[x_7].[Status] < 0
					) [t8] ON [t8].[ResourceID] = [b8].[ResourceID] AND [t8].[rn] <= 1
			WHERE
				[i8].[Status] < 0 AND [t8].[Id] = [i8].[Id]
		) [i8_1]
		LEFT JOIN [MaterialDTO] [m8] ON [i8_1].[MaterialID] = [m8].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @Empty UniqueIdentifier -- Guid
SET     @Empty = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_1 UniqueIdentifier -- Guid
SET     @Empty_1 = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_2 UniqueIdentifier -- Guid
SET     @Empty_2 = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_3 UniqueIdentifier -- Guid
SET     @Empty_3 = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_4 UniqueIdentifier -- Guid
SET     @Empty_4 = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_5 UniqueIdentifier -- Guid
SET     @Empty_5 = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_6 UniqueIdentifier -- Guid
SET     @Empty_6 = '00000000-0000-0000-0000-000000000000'
DECLARE @Empty_7 UniqueIdentifier -- Guid
SET     @Empty_7 = '00000000-0000-0000-0000-000000000000'

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
	[i1_1].[Id],
	[i1_1].[BatchNumber],
	[i1_1].[ProductStatus],
	[i1_1].[ExpiryDate],
	[i1_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_9]
		WHERE
			[x_9].[Status] < 0 AND [x_9].[ResourceID] = [c1].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_10]
			WHERE
				[x_10].[ResourceID] = [c1].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
	[i2_1].[Id],
	[i2_1].[BatchNumber],
	[i2_1].[ProductStatus],
	[i2_1].[ExpiryDate],
	[i2_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_12]
		WHERE
			[x_12].[Status] < 0 AND [x_12].[ResourceID] = [c2].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_13]
			WHERE
				[x_13].[ResourceID] = [c2].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a3].[Id] IS NOT NULL AND ([a3].[Id] <> @Empty_2 OR [a3].[Id] IS NULL)
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
	[i3_1].[Id],
	[i3_1].[BatchNumber],
	[i3_1].[ProductStatus],
	[i3_1].[ExpiryDate],
	[i3_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_15]
		WHERE
			[x_15].[Status] < 0 AND [x_15].[ResourceID] = [c3].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_16]
			WHERE
				[x_16].[ResourceID] = [c3].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a4].[Id] IS NOT NULL AND ([a4].[Id] <> @Empty_3 OR [a4].[Id] IS NULL)
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
	[i4_1].[Id],
	[i4_1].[BatchNumber],
	[i4_1].[ProductStatus],
	[i4_1].[ExpiryDate],
	[i4_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_18]
		WHERE
			[x_18].[Status] < 0 AND [x_18].[ResourceID] = [c4].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_19]
			WHERE
				[x_19].[ResourceID] = [c4].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a5].[Id] IS NOT NULL AND ([a5].[Id] <> @Empty_4 OR [a5].[Id] IS NULL)
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
	[i5_1].[Id],
	[i5_1].[BatchNumber],
	[i5_1].[ProductStatus],
	[i5_1].[ExpiryDate],
	[i5_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_21]
		WHERE
			[x_21].[Status] < 0 AND [x_21].[ResourceID] = [c5].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_22]
			WHERE
				[x_22].[ResourceID] = [c5].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a6].[Id] IS NOT NULL AND ([a6].[Id] <> @Empty_5 OR [a6].[Id] IS NULL)
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
	[i6_1].[Id],
	[i6_1].[BatchNumber],
	[i6_1].[ProductStatus],
	[i6_1].[ExpiryDate],
	[i6_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_24]
		WHERE
			[x_24].[Status] < 0 AND [x_24].[ResourceID] = [c6].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_25]
			WHERE
				[x_25].[ResourceID] = [c6].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a7].[Id] IS NOT NULL AND ([a7].[Id] <> @Empty_6 OR [a7].[Id] IS NULL)
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
	[i7_1].[Id],
	[i7_1].[BatchNumber],
	[i7_1].[ProductStatus],
	[i7_1].[ExpiryDate],
	[i7_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_27]
		WHERE
			[x_27].[Status] < 0 AND [x_27].[ResourceID] = [c7].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_28]
			WHERE
				[x_28].[ResourceID] = [c7].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [a8].[Id] IS NOT NULL AND ([a8].[Id] <> @Empty_7 OR [a8].[Id] IS NULL)
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
	[i8_1].[Id],
	[i8_1].[BatchNumber],
	[i8_1].[ProductStatus],
	[i8_1].[ExpiryDate],
	[i8_1].[CustomDate1],
	(
		SELECT
			COUNT(*)
		FROM
			[InventoryResourceDTO] [x_30]
		WHERE
			[x_30].[Status] < 0 AND [x_30].[ResourceID] = [c8].[Id]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[RefOutfeedTransportOrderResourceDTO] [x_31]
			WHERE
				[x_31].[ResourceID] = [c8].[Id]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN EXISTS(
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
		)
			THEN 1
		ELSE 0
	END
FROM
	[ChannelDTO] [x_8]
		INNER JOIN [AisleDTO] [a] ON [x_8].[AisleID] = [a].[Id]
		LEFT JOIN [MaterialDTO] [m_1] ON [x_8].[MaterialID] = [m_1].[Id]
		LEFT JOIN [StorageShelfDTO] [a1] ON [x_8].[Id] = [a1].[ChannelID] AND 1 = [a1].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b1] ON [a1].[Id] = [b1].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c1] ON [b1].[ResourceID] = [c1].[Id]
		OUTER APPLY (
			SELECT
				[i1].[Id],
				[i1].[BatchNumber],
				[i1].[ProductStatus],
				[i1].[ExpiryDate],
				[i1].[CustomDate1],
				[i1].[MaterialID]
			FROM
				[InventoryResourceDTO] [i1]
					INNER JOIN (
						SELECT
							[x].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x].[ResourceID] ORDER BY [x].[ResourceID]) as [rn],
							[x].[ResourceID]
						FROM
							[InventoryResourceDTO] [x]
						WHERE
							[x].[Status] < 0
					) [t1] ON [t1].[ResourceID] = [b1].[ResourceID] AND [t1].[rn] <= 1
			WHERE
				[i1].[Status] < 0 AND [t1].[Id] = [i1].[Id]
		) [i1_1]
		LEFT JOIN [MaterialDTO] [m1] ON [i1_1].[MaterialID] = [m1].[Id]
		LEFT JOIN [StorageShelfDTO] [a2] ON [x_8].[Id] = [a2].[ChannelID] AND 2 = [a2].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2] ON [a2].[Id] = [b2].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2] ON [b2].[ResourceID] = [c2].[Id]
		OUTER APPLY (
			SELECT
				[i2].[Id],
				[i2].[BatchNumber],
				[i2].[ProductStatus],
				[i2].[ExpiryDate],
				[i2].[CustomDate1],
				[i2].[MaterialID]
			FROM
				[InventoryResourceDTO] [i2]
					INNER JOIN (
						SELECT
							[x_1].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_1].[ResourceID] ORDER BY [x_1].[ResourceID]) as [rn],
							[x_1].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_1]
						WHERE
							[x_1].[Status] < 0
					) [t2] ON [t2].[ResourceID] = [b2].[ResourceID] AND [t2].[rn] <= 1
			WHERE
				[i2].[Status] < 0 AND [t2].[Id] = [i2].[Id]
		) [i2_1]
		LEFT JOIN [MaterialDTO] [m2] ON [i2_1].[MaterialID] = [m2].[Id]
		LEFT JOIN [StorageShelfDTO] [a3] ON [x_8].[Id] = [a3].[ChannelID] AND 3 = [a3].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3] ON [a3].[Id] = [b3].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3] ON [b3].[ResourceID] = [c3].[Id]
		OUTER APPLY (
			SELECT
				[i3].[Id],
				[i3].[BatchNumber],
				[i3].[ProductStatus],
				[i3].[ExpiryDate],
				[i3].[CustomDate1],
				[i3].[MaterialID]
			FROM
				[InventoryResourceDTO] [i3]
					INNER JOIN (
						SELECT
							[x_2].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_2].[ResourceID] ORDER BY [x_2].[ResourceID]) as [rn],
							[x_2].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_2]
						WHERE
							[x_2].[Status] < 0
					) [t3] ON [t3].[ResourceID] = [b3].[ResourceID] AND [t3].[rn] <= 1
			WHERE
				[i3].[Status] < 0 AND [t3].[Id] = [i3].[Id]
		) [i3_1]
		LEFT JOIN [MaterialDTO] [m3] ON [i3_1].[MaterialID] = [m3].[Id]
		LEFT JOIN [StorageShelfDTO] [a4] ON [x_8].[Id] = [a4].[ChannelID] AND 4 = [a4].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4] ON [a4].[Id] = [b4].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4] ON [b4].[ResourceID] = [c4].[Id]
		OUTER APPLY (
			SELECT
				[i4].[Id],
				[i4].[BatchNumber],
				[i4].[ProductStatus],
				[i4].[ExpiryDate],
				[i4].[CustomDate1],
				[i4].[MaterialID]
			FROM
				[InventoryResourceDTO] [i4]
					INNER JOIN (
						SELECT
							[x_3].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_3].[ResourceID] ORDER BY [x_3].[ResourceID]) as [rn],
							[x_3].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_3]
						WHERE
							[x_3].[Status] < 0
					) [t4] ON [t4].[ResourceID] = [b4].[ResourceID] AND [t4].[rn] <= 1
			WHERE
				[i4].[Status] < 0 AND [t4].[Id] = [i4].[Id]
		) [i4_1]
		LEFT JOIN [MaterialDTO] [m4] ON [i4_1].[MaterialID] = [m4].[Id]
		LEFT JOIN [StorageShelfDTO] [a5] ON [x_8].[Id] = [a5].[ChannelID] AND 5 = [a5].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5] ON [a5].[Id] = [b5].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5] ON [b5].[ResourceID] = [c5].[Id]
		OUTER APPLY (
			SELECT
				[i5].[Id],
				[i5].[BatchNumber],
				[i5].[ProductStatus],
				[i5].[ExpiryDate],
				[i5].[CustomDate1],
				[i5].[MaterialID]
			FROM
				[InventoryResourceDTO] [i5]
					INNER JOIN (
						SELECT
							[x_4].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_4].[ResourceID] ORDER BY [x_4].[ResourceID]) as [rn],
							[x_4].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_4]
						WHERE
							[x_4].[Status] < 0
					) [t5] ON [t5].[ResourceID] = [b5].[ResourceID] AND [t5].[rn] <= 1
			WHERE
				[i5].[Status] < 0 AND [t5].[Id] = [i5].[Id]
		) [i5_1]
		LEFT JOIN [MaterialDTO] [m5] ON [i5_1].[MaterialID] = [m5].[Id]
		LEFT JOIN [StorageShelfDTO] [a6] ON [x_8].[Id] = [a6].[ChannelID] AND 6 = [a6].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6] ON [a6].[Id] = [b6].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6] ON [b6].[ResourceID] = [c6].[Id]
		OUTER APPLY (
			SELECT
				[i6].[Id],
				[i6].[BatchNumber],
				[i6].[ProductStatus],
				[i6].[ExpiryDate],
				[i6].[CustomDate1],
				[i6].[MaterialID]
			FROM
				[InventoryResourceDTO] [i6]
					INNER JOIN (
						SELECT
							[x_5].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_5].[ResourceID] ORDER BY [x_5].[ResourceID]) as [rn],
							[x_5].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_5]
						WHERE
							[x_5].[Status] < 0
					) [t6] ON [t6].[ResourceID] = [b6].[ResourceID] AND [t6].[rn] <= 1
			WHERE
				[i6].[Status] < 0 AND [t6].[Id] = [i6].[Id]
		) [i6_1]
		LEFT JOIN [MaterialDTO] [m6] ON [i6_1].[MaterialID] = [m6].[Id]
		LEFT JOIN [StorageShelfDTO] [a7] ON [x_8].[Id] = [a7].[ChannelID] AND 7 = [a7].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7] ON [a7].[Id] = [b7].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7] ON [b7].[ResourceID] = [c7].[Id]
		OUTER APPLY (
			SELECT
				[i7].[Id],
				[i7].[BatchNumber],
				[i7].[ProductStatus],
				[i7].[ExpiryDate],
				[i7].[CustomDate1],
				[i7].[MaterialID]
			FROM
				[InventoryResourceDTO] [i7]
					INNER JOIN (
						SELECT
							[x_6].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_6].[ResourceID] ORDER BY [x_6].[ResourceID]) as [rn],
							[x_6].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_6]
						WHERE
							[x_6].[Status] < 0
					) [t7] ON [t7].[ResourceID] = [b7].[ResourceID] AND [t7].[rn] <= 1
			WHERE
				[i7].[Status] < 0 AND [t7].[Id] = [i7].[Id]
		) [i7_1]
		LEFT JOIN [MaterialDTO] [m7] ON [i7_1].[MaterialID] = [m7].[Id]
		LEFT JOIN [StorageShelfDTO] [a8] ON [x_8].[Id] = [a8].[ChannelID] AND 8 = [a8].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8] ON [a8].[Id] = [b8].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8] ON [b8].[ResourceID] = [c8].[Id]
		OUTER APPLY (
			SELECT
				[i8].[Id],
				[i8].[BatchNumber],
				[i8].[ProductStatus],
				[i8].[ExpiryDate],
				[i8].[CustomDate1],
				[i8].[MaterialID]
			FROM
				[InventoryResourceDTO] [i8]
					INNER JOIN (
						SELECT
							[x_7].[Id],
							ROW_NUMBER() OVER (PARTITION BY [x_7].[ResourceID] ORDER BY [x_7].[ResourceID]) as [rn],
							[x_7].[ResourceID]
						FROM
							[InventoryResourceDTO] [x_7]
						WHERE
							[x_7].[Status] < 0
					) [t8] ON [t8].[ResourceID] = [b8].[ResourceID] AND [t8].[rn] <= 1
			WHERE
				[i8].[Status] < 0 AND [t8].[Id] = [i8].[Id]
		) [i8_1]
		LEFT JOIN [MaterialDTO] [m8] ON [i8_1].[MaterialID] = [m8].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[RefResourceStorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[StorageShelfDTO]', N'U') IS NOT NULL)
	DROP TABLE [StorageShelfDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[WmsLoadCarrierDTO]', N'U') IS NOT NULL)
	DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[RefOutfeedTransportOrderResourceDTO]', N'U') IS NOT NULL)
	DROP TABLE [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MaterialDTO]', N'U') IS NOT NULL)
	DROP TABLE [MaterialDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[InventoryResourceDTO]', N'U') IS NOT NULL)
	DROP TABLE [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ChannelDTO]', N'U') IS NOT NULL)
	DROP TABLE [ChannelDTO]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AisleDTO]', N'U') IS NOT NULL)
	DROP TABLE [AisleDTO]

