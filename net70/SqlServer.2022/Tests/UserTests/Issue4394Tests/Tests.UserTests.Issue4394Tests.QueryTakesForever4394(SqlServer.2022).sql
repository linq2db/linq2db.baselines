BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [AisleDTO]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[ChannelDTO]', N'U') IS NULL)
	CREATE TABLE [ChannelDTO]
	(
		[Id]         Int NOT NULL,
		[AisleID]    Int NOT NULL,
		[MaterialID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2022

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
		[ExpiryDate]     DateTime2          NULL,
		[CustomDate1]    DateTime2          NULL,
		[Status]         Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[RefOutfeedTransportOrderResourceDTO]', N'U') IS NULL)
	CREATE TABLE [RefOutfeedTransportOrderResourceDTO]
	(
		[Id]         Int NOT NULL,
		[ResourceID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[RefResourceStorageShelfDTO]', N'U') IS NULL)
	CREATE TABLE [RefResourceStorageShelfDTO]
	(
		[Id]             Int              NOT NULL,
		[StorageShelfID] UniqueIdentifier NOT NULL,
		[ResourceID]     Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NULL)
	CREATE TABLE [InfeedAdvicePositionDTO]
	(
		[Id]               Int NOT NULL,
		[Nr]               Int NOT NULL,
		[InfeedAdviceType] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1
DECLARE @take_3 Int -- Int32
SET     @take_3 = 1
DECLARE @take_4 Int -- Int32
SET     @take_4 = 1
DECLARE @take_5 Int -- Int32
SET     @take_5 = 1
DECLARE @take_6 Int -- Int32
SET     @take_6 = 1
DECLARE @take_7 Int -- Int32
SET     @take_7 = 1

SELECT
	[x_19].[Id],
	[x_19].[AisleID],
	[x_19].[MaterialID],
	[x_19].[Id_1],
	[x_19].[AisleNumber],
	[x_19].[PlantID],
	[x_19].[Name],
	[x_19].[m_1],
	[x_19].[MaterialNumber],
	[x_19].[MaterialDescription_1],
	[x_19].[MaterialDescription_2],
	[x_19].[MaterialDescription_3],
	[x_19].[CategoryABC],
	[x_19].[CategoryCustoms],
	[x_19].[CategoryDimensions],
	[x_19].[CategoryQuality],
	[x_19].[CategoryTemperature],
	[x_19].[Id_2],
	[x_19].[ChannelID],
	[x_19].[DepthCoordinate],
	[x_19].[Status],
	[x_19].[Name_1],
	[x_19].[HeightClass],
	[x_19].[CategoryABC_1],
	[x_19].[AisleNumber_1],
	[x_19].[c1],
	[x_19].[ResourceLabel],
	[x_19].[Status_1],
	[x_19].[CustomLong2],
	[x_19].[HeightClass_1],
	[x_19].[TypeID],
	[x_19].[m1],
	[x_19].[MaterialNumber_1],
	[x_19].[MaterialDescription_1_1],
	[x_19].[CategoryABC_2],
	[x_19].[i1],
	[x_19].[BatchNumber],
	[x_19].[ProductStatus],
	[x_19].[ExpiryDate],
	[x_19].[CustomDate1],
	[x_19].[ir1ic],
	[x_19].[ror1],
	[x_19].[ir1mim]
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
			[mn].[Id] as [m_1],
			[mn].[MaterialNumber],
			[mn].[MaterialDescription_1],
			[mn].[MaterialDescription_2],
			[mn].[MaterialDescription_3],
			[mn].[CategoryABC],
			[mn].[CategoryCustoms],
			[mn].[CategoryDimensions],
			[mn].[CategoryQuality],
			[mn].[CategoryTemperature],
			[a1n].[Id] as [Id_2],
			[a1n].[ChannelID],
			[a1n].[DepthCoordinate],
			[a1n].[Status],
			[a1n].[Name] as [Name_1],
			[a1n].[HeightClass],
			[a1n].[CategoryABC] as [CategoryABC_1],
			[a1n].[AisleNumber] as [AisleNumber_1],
			[c1n].[Id] as [c1],
			[c1n].[ResourceLabel],
			[c1n].[Status] as [Status_1],
			[c1n].[CustomLong2],
			[c1n].[HeightClass] as [HeightClass_1],
			[c1n].[TypeID],
			[m1n].[Id] as [m1],
			[m1n].[MaterialNumber] as [MaterialNumber_1],
			[m1n].[MaterialDescription_1] as [MaterialDescription_1_1],
			[m1n].[CategoryABC] as [CategoryABC_2],
			[t1].[i1],
			[t1].[BatchNumber],
			[t1].[ProductStatus],
			[t1].[ExpiryDate],
			[t1].[CustomDate1],
			(
				SELECT
					Count(*)
				FROM
					[InventoryResourceDTO] [x]
				WHERE
					[x].[Status] < 0 AND [x].[ResourceID] = [c1n].[Id]
			) as [ir1ic],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[RefOutfeedTransportOrderResourceDTO] [x_1]
				WHERE
					[x_1].[ResourceID] = [c1n].[Id]
			), 1, 0) as [ror1],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[InventoryResourceDTO] [x_2]
				WHERE
					[x_2].[Status] < 0 AND [x_2].[ResourceID] = [c1n].[Id] AND
					([x_2].[InfeedAdviceID] IS NULL OR EXISTS(
						SELECT
							*
						FROM
							[InfeedAdvicePositionDTO] [y]
						WHERE
							[y].[Id] = [x_2].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 0
					))
			), 1, 0) as [ir1mim]
		FROM
			[ChannelDTO] [c_1]
				INNER JOIN [AisleDTO] [a] ON [c_1].[AisleID] = [a].[Id]
				LEFT JOIN [MaterialDTO] [mn] ON [c_1].[MaterialID] = [mn].[Id]
				LEFT JOIN [StorageShelfDTO] [a1n] ON [c_1].[Id] = [a1n].[ChannelID] AND 1 = [a1n].[DepthCoordinate]
				LEFT JOIN [RefResourceStorageShelfDTO] [b1n] ON [a1n].[Id] = [b1n].[StorageShelfID]
				LEFT JOIN [WmsLoadCarrierDTO] [c1n] ON [b1n].[ResourceID] = [c1n].[Id]
				LEFT JOIN (
					SELECT
						[x_3].[Id] as [i1],
						[x_3].[MaterialID],
						[x_3].[BatchNumber],
						[x_3].[ProductStatus],
						[x_3].[ExpiryDate],
						[x_3].[CustomDate1]
					FROM
						[InventoryResourceDTO] [x_3]
					WHERE
						[x_3].[Status] < 0
				) [t1] ON (
					SELECT TOP (@take)
						[x_4].[Id]
					FROM
						[InventoryResourceDTO] [x_4]
					WHERE
						[x_4].[Status] < 0 AND [x_4].[ResourceID] = [b1n].[ResourceID]
				) = [t1].[i1]
				LEFT JOIN [MaterialDTO] [m1n] ON [t1].[MaterialID] = [m1n].[Id]
	) [x_19]
		LEFT JOIN [StorageShelfDTO] [a2n] ON [x_19].[Id] = [a2n].[ChannelID] AND 2 = [a2n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2n] ON [a2n].[Id] = [b2n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2n] ON [b2n].[ResourceID] = [c2n].[Id]
		LEFT JOIN (
			SELECT
				[x_5].[Id] as [i2],
				[x_5].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_5]
			WHERE
				[x_5].[Status] < 0
		) [t2] ON (
			SELECT TOP (@take_1)
				[x_6].[Id]
			FROM
				[InventoryResourceDTO] [x_6]
			WHERE
				[x_6].[Status] < 0 AND [x_6].[ResourceID] = [b2n].[ResourceID]
		) = [t2].[i2]
		LEFT JOIN [MaterialDTO] [m2n] ON [t2].[MaterialID] = [m2n].[Id]
		LEFT JOIN [StorageShelfDTO] [a3n] ON [x_19].[Id] = [a3n].[ChannelID] AND 3 = [a3n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b3n] ON [a3n].[Id] = [b3n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c3n] ON [b3n].[ResourceID] = [c3n].[Id]
		LEFT JOIN (
			SELECT
				[x_7].[Id] as [i3],
				[x_7].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_7]
			WHERE
				[x_7].[Status] < 0
		) [t3] ON (
			SELECT TOP (@take_2)
				[x_8].[Id]
			FROM
				[InventoryResourceDTO] [x_8]
			WHERE
				[x_8].[Status] < 0 AND [x_8].[ResourceID] = [b3n].[ResourceID]
		) = [t3].[i3]
		LEFT JOIN [MaterialDTO] [m3n] ON [t3].[MaterialID] = [m3n].[Id]
		LEFT JOIN [StorageShelfDTO] [a4n] ON [x_19].[Id] = [a4n].[ChannelID] AND 4 = [a4n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b4n] ON [a4n].[Id] = [b4n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c4n] ON [b4n].[ResourceID] = [c4n].[Id]
		LEFT JOIN (
			SELECT
				[x_9].[Id] as [i4],
				[x_9].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_9]
			WHERE
				[x_9].[Status] < 0
		) [t4] ON (
			SELECT TOP (@take_3)
				[x_10].[Id]
			FROM
				[InventoryResourceDTO] [x_10]
			WHERE
				[x_10].[Status] < 0 AND [x_10].[ResourceID] = [b4n].[ResourceID]
		) = [t4].[i4]
		LEFT JOIN [MaterialDTO] [m4n] ON [t4].[MaterialID] = [m4n].[Id]
		LEFT JOIN [StorageShelfDTO] [a5n] ON [x_19].[Id] = [a5n].[ChannelID] AND 5 = [a5n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b5n] ON [a5n].[Id] = [b5n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c5n] ON [b5n].[ResourceID] = [c5n].[Id]
		LEFT JOIN (
			SELECT
				[x_11].[Id] as [i5],
				[x_11].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_11]
			WHERE
				[x_11].[Status] < 0
		) [t5] ON (
			SELECT TOP (@take_4)
				[x_12].[Id]
			FROM
				[InventoryResourceDTO] [x_12]
			WHERE
				[x_12].[Status] < 0 AND [x_12].[ResourceID] = [b5n].[ResourceID]
		) = [t5].[i5]
		LEFT JOIN [MaterialDTO] [m5n] ON [t5].[MaterialID] = [m5n].[Id]
		LEFT JOIN [StorageShelfDTO] [a6n] ON [x_19].[Id] = [a6n].[ChannelID] AND 6 = [a6n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b6n] ON [a6n].[Id] = [b6n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c6n] ON [b6n].[ResourceID] = [c6n].[Id]
		LEFT JOIN (
			SELECT
				[x_13].[Id] as [i6],
				[x_13].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_13]
			WHERE
				[x_13].[Status] < 0
		) [t6] ON (
			SELECT TOP (@take_5)
				[x_14].[Id]
			FROM
				[InventoryResourceDTO] [x_14]
			WHERE
				[x_14].[Status] < 0 AND [x_14].[ResourceID] = [b6n].[ResourceID]
		) = [t6].[i6]
		LEFT JOIN [MaterialDTO] [m6n] ON [t6].[MaterialID] = [m6n].[Id]
		LEFT JOIN [StorageShelfDTO] [a7n] ON [x_19].[Id] = [a7n].[ChannelID] AND 7 = [a7n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b7n] ON [a7n].[Id] = [b7n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c7n] ON [b7n].[ResourceID] = [c7n].[Id]
		LEFT JOIN (
			SELECT
				[x_15].[Id] as [i7],
				[x_15].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_15]
			WHERE
				[x_15].[Status] < 0
		) [t7] ON (
			SELECT TOP (@take_6)
				[x_16].[Id]
			FROM
				[InventoryResourceDTO] [x_16]
			WHERE
				[x_16].[Status] < 0 AND [x_16].[ResourceID] = [b7n].[ResourceID]
		) = [t7].[i7]
		LEFT JOIN [MaterialDTO] [m7n] ON [t7].[MaterialID] = [m7n].[Id]
		LEFT JOIN [StorageShelfDTO] [a8n] ON [x_19].[Id] = [a8n].[ChannelID] AND 8 = [a8n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8n] ON [a8n].[Id] = [b8n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8n] ON [b8n].[ResourceID] = [c8n].[Id]
		LEFT JOIN (
			SELECT
				[x_17].[Id] as [i8],
				[x_17].[MaterialID]
			FROM
				[InventoryResourceDTO] [x_17]
			WHERE
				[x_17].[Status] < 0
		) [t8] ON (
			SELECT TOP (@take_7)
				[x_18].[Id]
			FROM
				[InventoryResourceDTO] [x_18]
			WHERE
				[x_18].[Status] < 0 AND [x_18].[ResourceID] = [b8n].[ResourceID]
		) = [t8].[i8]
		LEFT JOIN [MaterialDTO] [m8n] ON [t8].[MaterialID] = [m8n].[Id]

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1
DECLARE @take_3 Int -- Int32
SET     @take_3 = 1
DECLARE @take_4 Int -- Int32
SET     @take_4 = 1
DECLARE @take_5 Int -- Int32
SET     @take_5 = 1
DECLARE @take_6 Int -- Int32
SET     @take_6 = 1
DECLARE @take_7 Int -- Int32
SET     @take_7 = 1

SELECT
	[x_40].[Id],
	[x_40].[AisleID],
	[x_40].[MaterialID],
	[x_40].[Id_1],
	[x_40].[AisleNumber],
	[x_40].[PlantID],
	[x_40].[Name],
	[x_40].[m_1],
	[x_40].[MaterialNumber],
	[x_40].[MaterialDescription_1],
	[x_40].[MaterialDescription_2],
	[x_40].[MaterialDescription_3],
	[x_40].[CategoryABC],
	[x_40].[CategoryCustoms],
	[x_40].[CategoryDimensions],
	[x_40].[CategoryQuality],
	[x_40].[CategoryTemperature],
	[x_40].[Id_2],
	[x_40].[ChannelID],
	[x_40].[DepthCoordinate],
	[x_40].[Status],
	[x_40].[Name_1],
	[x_40].[HeightClass],
	[x_40].[CategoryABC_1],
	[x_40].[AisleNumber_1],
	[x_40].[c1],
	[x_40].[ResourceLabel],
	[x_40].[Status_1],
	[x_40].[CustomLong2],
	[x_40].[HeightClass_1],
	[x_40].[TypeID],
	[x_40].[m1],
	[x_40].[MaterialNumber_1],
	[x_40].[MaterialDescription_1_1],
	[x_40].[CategoryABC_2],
	[x_40].[i1],
	[x_40].[BatchNumber],
	[x_40].[ProductStatus],
	[x_40].[ExpiryDate],
	[x_40].[CustomDate1],
	[x_40].[ir1ic],
	[x_40].[ror1],
	[x_40].[ir1mim],
	[x_40].[Id_3],
	[x_40].[ChannelID_1],
	[x_40].[DepthCoordinate_1],
	[x_40].[Status_2],
	[x_40].[Name_2],
	[x_40].[HeightClass_2],
	[x_40].[CategoryABC_3],
	[x_40].[AisleNumber_2],
	[x_40].[c2],
	[x_40].[ResourceLabel_1],
	[x_40].[Status_3],
	[x_40].[CustomLong2_1],
	[x_40].[HeightClass_3],
	[x_40].[TypeID_1],
	[x_40].[m2],
	[x_40].[MaterialNumber_2],
	[x_40].[MaterialDescription_1_2],
	[x_40].[CategoryABC_4],
	[x_40].[i2],
	[x_40].[BatchNumber_1],
	[x_40].[ProductStatus_1],
	[x_40].[ExpiryDate_1],
	[x_40].[CustomDate1_1],
	[x_40].[ir2ic],
	[x_40].[ror2],
	[x_40].[ir2mim],
	[x_40].[Id_4],
	[x_40].[ChannelID_2],
	[x_40].[DepthCoordinate_2],
	[x_40].[Status_4],
	[x_40].[Name_3],
	[x_40].[HeightClass_4],
	[x_40].[CategoryABC_5],
	[x_40].[AisleNumber_3],
	[x_40].[c3],
	[x_40].[ResourceLabel_2],
	[x_40].[Status_5],
	[x_40].[CustomLong2_2],
	[x_40].[HeightClass_5],
	[x_40].[TypeID_2],
	[x_40].[m3],
	[x_40].[MaterialNumber_3],
	[x_40].[MaterialDescription_1_3],
	[x_40].[CategoryABC_6],
	[x_40].[i3],
	[x_40].[BatchNumber_2],
	[x_40].[ProductStatus_2],
	[x_40].[ExpiryDate_2],
	[x_40].[CustomDate1_2],
	[x_40].[ir3ic],
	[x_40].[ror3],
	[x_40].[ir3mim],
	[x_40].[Id_5],
	[x_40].[ChannelID_3],
	[x_40].[DepthCoordinate_3],
	[x_40].[Status_6],
	[x_40].[Name_4],
	[x_40].[HeightClass_6],
	[x_40].[CategoryABC_7],
	[x_40].[AisleNumber_4],
	[x_40].[c4],
	[x_40].[ResourceLabel_3],
	[x_40].[Status_7],
	[x_40].[CustomLong2_3],
	[x_40].[HeightClass_7],
	[x_40].[TypeID_3],
	[x_40].[m4],
	[x_40].[MaterialNumber_4],
	[x_40].[MaterialDescription_1_4],
	[x_40].[CategoryABC_8],
	[x_40].[i4],
	[x_40].[BatchNumber_3],
	[x_40].[ProductStatus_3],
	[x_40].[ExpiryDate_3],
	[x_40].[CustomDate1_3],
	[x_40].[ir4ic],
	[x_40].[ror4],
	[x_40].[ir4mim],
	[x_40].[Id_6],
	[x_40].[ChannelID_4],
	[x_40].[DepthCoordinate_4],
	[x_40].[Status_8],
	[x_40].[Name_5],
	[x_40].[HeightClass_8],
	[x_40].[CategoryABC_9],
	[x_40].[AisleNumber_5],
	[x_40].[c5],
	[x_40].[ResourceLabel_4],
	[x_40].[Status_9],
	[x_40].[CustomLong2_4],
	[x_40].[HeightClass_9],
	[x_40].[TypeID_4],
	[x_40].[m5],
	[x_40].[MaterialNumber_5],
	[x_40].[MaterialDescription_1_5],
	[x_40].[CategoryABC_10],
	[x_40].[i5],
	[x_40].[BatchNumber_4],
	[x_40].[ProductStatus_4],
	[x_40].[ExpiryDate_4],
	[x_40].[CustomDate1_4],
	[x_40].[ir5ic],
	[x_40].[ror5],
	[x_40].[ir5mim],
	[x_40].[Id_7],
	[x_40].[ChannelID_5],
	[x_40].[DepthCoordinate_5],
	[x_40].[Status_10],
	[x_40].[Name_6],
	[x_40].[HeightClass_10],
	[x_40].[CategoryABC_11],
	[x_40].[AisleNumber_6],
	[x_40].[c6],
	[x_40].[ResourceLabel_5],
	[x_40].[Status_11],
	[x_40].[CustomLong2_5],
	[x_40].[HeightClass_11],
	[x_40].[TypeID_5],
	[x_40].[m6],
	[x_40].[MaterialNumber_6],
	[x_40].[MaterialDescription_1_6],
	[x_40].[CategoryABC_12],
	[x_40].[i6],
	[x_40].[BatchNumber_5],
	[x_40].[ProductStatus_5],
	[x_40].[ExpiryDate_5],
	[x_40].[CustomDate1_5],
	[x_40].[ir6ic],
	[x_40].[ror6],
	[x_40].[ir6mim],
	[x_40].[Id_8],
	[x_40].[ChannelID_6],
	[x_40].[DepthCoordinate_6],
	[x_40].[Status_12],
	[x_40].[Name_7],
	[x_40].[HeightClass_12],
	[x_40].[CategoryABC_13],
	[x_40].[AisleNumber_7],
	[x_40].[c7],
	[x_40].[ResourceLabel_6],
	[x_40].[Status_13],
	[x_40].[CustomLong2_6],
	[x_40].[HeightClass_13],
	[x_40].[TypeID_6],
	[x_40].[m7],
	[x_40].[MaterialNumber_7],
	[x_40].[MaterialDescription_1_7],
	[x_40].[CategoryABC_14],
	[x_40].[i7],
	[x_40].[BatchNumber_6],
	[x_40].[ProductStatus_6],
	[x_40].[ExpiryDate_6],
	[x_40].[CustomDate1_6],
	[x_40].[ir7ic],
	[x_40].[ror7],
	[x_40].[ir7mim],
	[a8n].[Id],
	[a8n].[ChannelID],
	[a8n].[DepthCoordinate],
	[a8n].[Status],
	[a8n].[Name],
	[a8n].[HeightClass],
	[a8n].[CategoryABC],
	[a8n].[AisleNumber],
	[c8n].[Id],
	[c8n].[ResourceLabel],
	[c8n].[Status],
	[c8n].[CustomLong2],
	[c8n].[HeightClass],
	[c8n].[TypeID],
	[m8n].[Id],
	[m8n].[MaterialNumber],
	[m8n].[MaterialDescription_1],
	[m8n].[CategoryABC],
	[t14].[i8],
	[t14].[BatchNumber],
	[t14].[ProductStatus],
	[t14].[ExpiryDate],
	[t14].[CustomDate1],
	(
		SELECT
			Count(*)
		FROM
			[InventoryResourceDTO] [x_21]
		WHERE
			[x_21].[Status] < 0 AND [x_21].[ResourceID] = [c8n].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_22]
		WHERE
			[x_22].[ResourceID] = [c8n].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_23]
		WHERE
			[x_23].[Status] < 0 AND [x_23].[ResourceID] = [c8n].[Id] AND
			([x_23].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_7]
				WHERE
					[y_7].[Id] = [x_23].[InfeedAdviceID] AND [y_7].[InfeedAdviceType] = 0
			))
	), 1, 0)
FROM
	(
		SELECT
			[t13].[Id],
			[t13].[AisleID],
			[t13].[MaterialID],
			[t13].[Id_1],
			[t13].[AisleNumber],
			[t13].[PlantID],
			[t13].[Name],
			[t13].[m_1],
			[t13].[MaterialNumber],
			[t13].[MaterialDescription_1],
			[t13].[MaterialDescription_2],
			[t13].[MaterialDescription_3],
			[t13].[CategoryABC],
			[t13].[CategoryCustoms],
			[t13].[CategoryDimensions],
			[t13].[CategoryQuality],
			[t13].[CategoryTemperature],
			[t13].[Id_2],
			[t13].[ChannelID],
			[t13].[DepthCoordinate],
			[t13].[Status],
			[t13].[Name_1],
			[t13].[HeightClass],
			[t13].[CategoryABC_1],
			[t13].[AisleNumber_1],
			[t13].[c1],
			[t13].[ResourceLabel],
			[t13].[Status_1],
			[t13].[CustomLong2],
			[t13].[HeightClass_1],
			[t13].[TypeID],
			[t13].[m1],
			[t13].[MaterialNumber_1],
			[t13].[MaterialDescription_1_1],
			[t13].[CategoryABC_2],
			[t13].[i1],
			[t13].[BatchNumber],
			[t13].[ProductStatus],
			[t13].[ExpiryDate],
			[t13].[CustomDate1],
			[t13].[ir1ic],
			[t13].[ror1],
			[t13].[ir1mim],
			[t13].[Id_3],
			[t13].[ChannelID_1],
			[t13].[DepthCoordinate_1],
			[t13].[Status_2],
			[t13].[Name_2],
			[t13].[HeightClass_2],
			[t13].[CategoryABC_3],
			[t13].[AisleNumber_2],
			[t13].[c2],
			[t13].[ResourceLabel_1],
			[t13].[Status_3],
			[t13].[CustomLong2_1],
			[t13].[HeightClass_3],
			[t13].[TypeID_1],
			[t13].[m2],
			[t13].[MaterialNumber_2],
			[t13].[MaterialDescription_1_2],
			[t13].[CategoryABC_4],
			[t13].[i2],
			[t13].[BatchNumber_1],
			[t13].[ProductStatus_1],
			[t13].[ExpiryDate_1],
			[t13].[CustomDate1_1],
			[t13].[ir2ic],
			[t13].[ror2],
			[t13].[ir2mim],
			[t13].[Id_4],
			[t13].[ChannelID_2],
			[t13].[DepthCoordinate_2],
			[t13].[Status_4],
			[t13].[Name_3],
			[t13].[HeightClass_4],
			[t13].[CategoryABC_5],
			[t13].[AisleNumber_3],
			[t13].[c3],
			[t13].[ResourceLabel_2],
			[t13].[Status_5],
			[t13].[CustomLong2_2],
			[t13].[HeightClass_5],
			[t13].[TypeID_2],
			[t13].[m3],
			[t13].[MaterialNumber_3],
			[t13].[MaterialDescription_1_3],
			[t13].[CategoryABC_6],
			[t13].[i3],
			[t13].[BatchNumber_2],
			[t13].[ProductStatus_2],
			[t13].[ExpiryDate_2],
			[t13].[CustomDate1_2],
			[t13].[ir3ic],
			[t13].[ror3],
			[t13].[ir3mim],
			[t13].[Id_5],
			[t13].[ChannelID_3],
			[t13].[DepthCoordinate_3],
			[t13].[Status_6],
			[t13].[Name_4],
			[t13].[HeightClass_6],
			[t13].[CategoryABC_7],
			[t13].[AisleNumber_4],
			[t13].[c4],
			[t13].[ResourceLabel_3],
			[t13].[Status_7],
			[t13].[CustomLong2_3],
			[t13].[HeightClass_7],
			[t13].[TypeID_3],
			[t13].[m4],
			[t13].[MaterialNumber_4],
			[t13].[MaterialDescription_1_4],
			[t13].[CategoryABC_8],
			[t13].[i4],
			[t13].[BatchNumber_3],
			[t13].[ProductStatus_3],
			[t13].[ExpiryDate_3],
			[t13].[CustomDate1_3],
			[t13].[ir4ic],
			[t13].[ror4],
			[t13].[ir4mim],
			[t13].[Id_6],
			[t13].[ChannelID_4],
			[t13].[DepthCoordinate_4],
			[t13].[Status_8],
			[t13].[Name_5],
			[t13].[HeightClass_8],
			[t13].[CategoryABC_9],
			[t13].[AisleNumber_5],
			[t13].[c5],
			[t13].[ResourceLabel_4],
			[t13].[Status_9],
			[t13].[CustomLong2_4],
			[t13].[HeightClass_9],
			[t13].[TypeID_4],
			[t13].[m5],
			[t13].[MaterialNumber_5],
			[t13].[MaterialDescription_1_5],
			[t13].[CategoryABC_10],
			[t13].[i5],
			[t13].[BatchNumber_4],
			[t13].[ProductStatus_4],
			[t13].[ExpiryDate_4],
			[t13].[CustomDate1_4],
			[t13].[ir5ic],
			[t13].[ror5],
			[t13].[ir5mim],
			[t13].[Id_7],
			[t13].[ChannelID_5],
			[t13].[DepthCoordinate_5],
			[t13].[Status_10],
			[t13].[Name_6],
			[t13].[HeightClass_10],
			[t13].[CategoryABC_11],
			[t13].[AisleNumber_6],
			[t13].[c6],
			[t13].[ResourceLabel_5],
			[t13].[Status_11],
			[t13].[CustomLong2_5],
			[t13].[HeightClass_11],
			[t13].[TypeID_5],
			[t13].[m6],
			[t13].[MaterialNumber_6],
			[t13].[MaterialDescription_1_6],
			[t13].[CategoryABC_12],
			[t13].[i6],
			[t13].[BatchNumber_5],
			[t13].[ProductStatus_5],
			[t13].[ExpiryDate_5],
			[t13].[CustomDate1_5],
			[t13].[ir6ic],
			[t13].[ror6],
			[t13].[ir6mim],
			[a7n].[Id] as [Id_8],
			[a7n].[ChannelID] as [ChannelID_6],
			[a7n].[DepthCoordinate] as [DepthCoordinate_6],
			[a7n].[Status] as [Status_12],
			[a7n].[Name] as [Name_7],
			[a7n].[HeightClass] as [HeightClass_12],
			[a7n].[CategoryABC] as [CategoryABC_13],
			[a7n].[AisleNumber] as [AisleNumber_7],
			[c7n].[Id] as [c7],
			[c7n].[ResourceLabel] as [ResourceLabel_6],
			[c7n].[Status] as [Status_13],
			[c7n].[CustomLong2] as [CustomLong2_6],
			[c7n].[HeightClass] as [HeightClass_13],
			[c7n].[TypeID] as [TypeID_6],
			[m7n].[Id] as [m7],
			[m7n].[MaterialNumber] as [MaterialNumber_7],
			[m7n].[MaterialDescription_1] as [MaterialDescription_1_7],
			[m7n].[CategoryABC] as [CategoryABC_14],
			[t12].[i7],
			[t12].[BatchNumber] as [BatchNumber_6],
			[t12].[ProductStatus] as [ProductStatus_6],
			[t12].[ExpiryDate] as [ExpiryDate_6],
			[t12].[CustomDate1] as [CustomDate1_6],
			(
				SELECT
					Count(*)
				FROM
					[InventoryResourceDTO] [x_18]
				WHERE
					[x_18].[Status] < 0 AND [x_18].[ResourceID] = [c7n].[Id]
			) as [ir7ic],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[RefOutfeedTransportOrderResourceDTO] [x_19]
				WHERE
					[x_19].[ResourceID] = [c7n].[Id]
			), 1, 0) as [ror7],
			IIF(EXISTS(
				SELECT
					*
				FROM
					[InventoryResourceDTO] [x_20]
				WHERE
					[x_20].[Status] < 0 AND [x_20].[ResourceID] = [c7n].[Id] AND
					([x_20].[InfeedAdviceID] IS NULL OR EXISTS(
						SELECT
							*
						FROM
							[InfeedAdvicePositionDTO] [y_6]
						WHERE
							[y_6].[Id] = [x_20].[InfeedAdviceID] AND [y_6].[InfeedAdviceType] = 0
					))
			), 1, 0) as [ir7mim]
		FROM
			(
				SELECT
					[t11].[Id],
					[t11].[AisleID],
					[t11].[MaterialID],
					[t11].[Id_1],
					[t11].[AisleNumber],
					[t11].[PlantID],
					[t11].[Name],
					[t11].[m_1],
					[t11].[MaterialNumber],
					[t11].[MaterialDescription_1],
					[t11].[MaterialDescription_2],
					[t11].[MaterialDescription_3],
					[t11].[CategoryABC],
					[t11].[CategoryCustoms],
					[t11].[CategoryDimensions],
					[t11].[CategoryQuality],
					[t11].[CategoryTemperature],
					[t11].[Id_2],
					[t11].[ChannelID],
					[t11].[DepthCoordinate],
					[t11].[Status],
					[t11].[Name_1],
					[t11].[HeightClass],
					[t11].[CategoryABC_1],
					[t11].[AisleNumber_1],
					[t11].[c1],
					[t11].[ResourceLabel],
					[t11].[Status_1],
					[t11].[CustomLong2],
					[t11].[HeightClass_1],
					[t11].[TypeID],
					[t11].[m1],
					[t11].[MaterialNumber_1],
					[t11].[MaterialDescription_1_1],
					[t11].[CategoryABC_2],
					[t11].[i1],
					[t11].[BatchNumber],
					[t11].[ProductStatus],
					[t11].[ExpiryDate],
					[t11].[CustomDate1],
					[t11].[ir1ic],
					[t11].[ror1],
					[t11].[ir1mim],
					[t11].[Id_3],
					[t11].[ChannelID_1],
					[t11].[DepthCoordinate_1],
					[t11].[Status_2],
					[t11].[Name_2],
					[t11].[HeightClass_2],
					[t11].[CategoryABC_3],
					[t11].[AisleNumber_2],
					[t11].[c2],
					[t11].[ResourceLabel_1],
					[t11].[Status_3],
					[t11].[CustomLong2_1],
					[t11].[HeightClass_3],
					[t11].[TypeID_1],
					[t11].[m2],
					[t11].[MaterialNumber_2],
					[t11].[MaterialDescription_1_2],
					[t11].[CategoryABC_4],
					[t11].[i2],
					[t11].[BatchNumber_1],
					[t11].[ProductStatus_1],
					[t11].[ExpiryDate_1],
					[t11].[CustomDate1_1],
					[t11].[ir2ic],
					[t11].[ror2],
					[t11].[ir2mim],
					[t11].[Id_4],
					[t11].[ChannelID_2],
					[t11].[DepthCoordinate_2],
					[t11].[Status_4],
					[t11].[Name_3],
					[t11].[HeightClass_4],
					[t11].[CategoryABC_5],
					[t11].[AisleNumber_3],
					[t11].[c3],
					[t11].[ResourceLabel_2],
					[t11].[Status_5],
					[t11].[CustomLong2_2],
					[t11].[HeightClass_5],
					[t11].[TypeID_2],
					[t11].[m3],
					[t11].[MaterialNumber_3],
					[t11].[MaterialDescription_1_3],
					[t11].[CategoryABC_6],
					[t11].[i3],
					[t11].[BatchNumber_2],
					[t11].[ProductStatus_2],
					[t11].[ExpiryDate_2],
					[t11].[CustomDate1_2],
					[t11].[ir3ic],
					[t11].[ror3],
					[t11].[ir3mim],
					[t11].[Id_5],
					[t11].[ChannelID_3],
					[t11].[DepthCoordinate_3],
					[t11].[Status_6],
					[t11].[Name_4],
					[t11].[HeightClass_6],
					[t11].[CategoryABC_7],
					[t11].[AisleNumber_4],
					[t11].[c4],
					[t11].[ResourceLabel_3],
					[t11].[Status_7],
					[t11].[CustomLong2_3],
					[t11].[HeightClass_7],
					[t11].[TypeID_3],
					[t11].[m4],
					[t11].[MaterialNumber_4],
					[t11].[MaterialDescription_1_4],
					[t11].[CategoryABC_8],
					[t11].[i4],
					[t11].[BatchNumber_3],
					[t11].[ProductStatus_3],
					[t11].[ExpiryDate_3],
					[t11].[CustomDate1_3],
					[t11].[ir4ic],
					[t11].[ror4],
					[t11].[ir4mim],
					[t11].[Id_6],
					[t11].[ChannelID_4],
					[t11].[DepthCoordinate_4],
					[t11].[Status_8],
					[t11].[Name_5],
					[t11].[HeightClass_8],
					[t11].[CategoryABC_9],
					[t11].[AisleNumber_5],
					[t11].[c5],
					[t11].[ResourceLabel_4],
					[t11].[Status_9],
					[t11].[CustomLong2_4],
					[t11].[HeightClass_9],
					[t11].[TypeID_4],
					[t11].[m5],
					[t11].[MaterialNumber_5],
					[t11].[MaterialDescription_1_5],
					[t11].[CategoryABC_10],
					[t11].[i5],
					[t11].[BatchNumber_4],
					[t11].[ProductStatus_4],
					[t11].[ExpiryDate_4],
					[t11].[CustomDate1_4],
					[t11].[ir5ic],
					[t11].[ror5],
					[t11].[ir5mim],
					[a6n].[Id] as [Id_7],
					[a6n].[ChannelID] as [ChannelID_5],
					[a6n].[DepthCoordinate] as [DepthCoordinate_5],
					[a6n].[Status] as [Status_10],
					[a6n].[Name] as [Name_6],
					[a6n].[HeightClass] as [HeightClass_10],
					[a6n].[CategoryABC] as [CategoryABC_11],
					[a6n].[AisleNumber] as [AisleNumber_6],
					[c6n].[Id] as [c6],
					[c6n].[ResourceLabel] as [ResourceLabel_5],
					[c6n].[Status] as [Status_11],
					[c6n].[CustomLong2] as [CustomLong2_5],
					[c6n].[HeightClass] as [HeightClass_11],
					[c6n].[TypeID] as [TypeID_5],
					[m6n].[Id] as [m6],
					[m6n].[MaterialNumber] as [MaterialNumber_6],
					[m6n].[MaterialDescription_1] as [MaterialDescription_1_6],
					[m6n].[CategoryABC] as [CategoryABC_12],
					[t10].[i6],
					[t10].[BatchNumber] as [BatchNumber_5],
					[t10].[ProductStatus] as [ProductStatus_5],
					[t10].[ExpiryDate] as [ExpiryDate_5],
					[t10].[CustomDate1] as [CustomDate1_5],
					(
						SELECT
							Count(*)
						FROM
							[InventoryResourceDTO] [x_15]
						WHERE
							[x_15].[Status] < 0 AND [x_15].[ResourceID] = [c6n].[Id]
					) as [ir6ic],
					IIF(EXISTS(
						SELECT
							*
						FROM
							[RefOutfeedTransportOrderResourceDTO] [x_16]
						WHERE
							[x_16].[ResourceID] = [c6n].[Id]
					), 1, 0) as [ror6],
					IIF(EXISTS(
						SELECT
							*
						FROM
							[InventoryResourceDTO] [x_17]
						WHERE
							[x_17].[Status] < 0 AND [x_17].[ResourceID] = [c6n].[Id] AND
							([x_17].[InfeedAdviceID] IS NULL OR EXISTS(
								SELECT
									*
								FROM
									[InfeedAdvicePositionDTO] [y_5]
								WHERE
									[y_5].[Id] = [x_17].[InfeedAdviceID] AND [y_5].[InfeedAdviceType] = 0
							))
					), 1, 0) as [ir6mim]
				FROM
					(
						SELECT
							[t9].[Id],
							[t9].[AisleID],
							[t9].[MaterialID],
							[t9].[Id_1],
							[t9].[AisleNumber],
							[t9].[PlantID],
							[t9].[Name],
							[t9].[m_1],
							[t9].[MaterialNumber],
							[t9].[MaterialDescription_1],
							[t9].[MaterialDescription_2],
							[t9].[MaterialDescription_3],
							[t9].[CategoryABC],
							[t9].[CategoryCustoms],
							[t9].[CategoryDimensions],
							[t9].[CategoryQuality],
							[t9].[CategoryTemperature],
							[t9].[Id_2],
							[t9].[ChannelID],
							[t9].[DepthCoordinate],
							[t9].[Status],
							[t9].[Name_1],
							[t9].[HeightClass],
							[t9].[CategoryABC_1],
							[t9].[AisleNumber_1],
							[t9].[c1],
							[t9].[ResourceLabel],
							[t9].[Status_1],
							[t9].[CustomLong2],
							[t9].[HeightClass_1],
							[t9].[TypeID],
							[t9].[m1],
							[t9].[MaterialNumber_1],
							[t9].[MaterialDescription_1_1],
							[t9].[CategoryABC_2],
							[t9].[i1],
							[t9].[BatchNumber],
							[t9].[ProductStatus],
							[t9].[ExpiryDate],
							[t9].[CustomDate1],
							[t9].[ir1ic],
							[t9].[ror1],
							[t9].[ir1mim],
							[t9].[Id_3],
							[t9].[ChannelID_1],
							[t9].[DepthCoordinate_1],
							[t9].[Status_2],
							[t9].[Name_2],
							[t9].[HeightClass_2],
							[t9].[CategoryABC_3],
							[t9].[AisleNumber_2],
							[t9].[c2],
							[t9].[ResourceLabel_1],
							[t9].[Status_3],
							[t9].[CustomLong2_1],
							[t9].[HeightClass_3],
							[t9].[TypeID_1],
							[t9].[m2],
							[t9].[MaterialNumber_2],
							[t9].[MaterialDescription_1_2],
							[t9].[CategoryABC_4],
							[t9].[i2],
							[t9].[BatchNumber_1],
							[t9].[ProductStatus_1],
							[t9].[ExpiryDate_1],
							[t9].[CustomDate1_1],
							[t9].[ir2ic],
							[t9].[ror2],
							[t9].[ir2mim],
							[t9].[Id_4],
							[t9].[ChannelID_2],
							[t9].[DepthCoordinate_2],
							[t9].[Status_4],
							[t9].[Name_3],
							[t9].[HeightClass_4],
							[t9].[CategoryABC_5],
							[t9].[AisleNumber_3],
							[t9].[c3],
							[t9].[ResourceLabel_2],
							[t9].[Status_5],
							[t9].[CustomLong2_2],
							[t9].[HeightClass_5],
							[t9].[TypeID_2],
							[t9].[m3],
							[t9].[MaterialNumber_3],
							[t9].[MaterialDescription_1_3],
							[t9].[CategoryABC_6],
							[t9].[i3],
							[t9].[BatchNumber_2],
							[t9].[ProductStatus_2],
							[t9].[ExpiryDate_2],
							[t9].[CustomDate1_2],
							[t9].[ir3ic],
							[t9].[ror3],
							[t9].[ir3mim],
							[t9].[Id_5],
							[t9].[ChannelID_3],
							[t9].[DepthCoordinate_3],
							[t9].[Status_6],
							[t9].[Name_4],
							[t9].[HeightClass_6],
							[t9].[CategoryABC_7],
							[t9].[AisleNumber_4],
							[t9].[c4],
							[t9].[ResourceLabel_3],
							[t9].[Status_7],
							[t9].[CustomLong2_3],
							[t9].[HeightClass_7],
							[t9].[TypeID_3],
							[t9].[m4],
							[t9].[MaterialNumber_4],
							[t9].[MaterialDescription_1_4],
							[t9].[CategoryABC_8],
							[t9].[i4],
							[t9].[BatchNumber_3],
							[t9].[ProductStatus_3],
							[t9].[ExpiryDate_3],
							[t9].[CustomDate1_3],
							[t9].[ir4ic],
							[t9].[ror4],
							[t9].[ir4mim],
							[a5n].[Id] as [Id_6],
							[a5n].[ChannelID] as [ChannelID_4],
							[a5n].[DepthCoordinate] as [DepthCoordinate_4],
							[a5n].[Status] as [Status_8],
							[a5n].[Name] as [Name_5],
							[a5n].[HeightClass] as [HeightClass_8],
							[a5n].[CategoryABC] as [CategoryABC_9],
							[a5n].[AisleNumber] as [AisleNumber_5],
							[c5n].[Id] as [c5],
							[c5n].[ResourceLabel] as [ResourceLabel_4],
							[c5n].[Status] as [Status_9],
							[c5n].[CustomLong2] as [CustomLong2_4],
							[c5n].[HeightClass] as [HeightClass_9],
							[c5n].[TypeID] as [TypeID_4],
							[m5n].[Id] as [m5],
							[m5n].[MaterialNumber] as [MaterialNumber_5],
							[m5n].[MaterialDescription_1] as [MaterialDescription_1_5],
							[m5n].[CategoryABC] as [CategoryABC_10],
							[t8].[i5],
							[t8].[BatchNumber] as [BatchNumber_4],
							[t8].[ProductStatus] as [ProductStatus_4],
							[t8].[ExpiryDate] as [ExpiryDate_4],
							[t8].[CustomDate1] as [CustomDate1_4],
							(
								SELECT
									Count(*)
								FROM
									[InventoryResourceDTO] [x_12]
								WHERE
									[x_12].[Status] < 0 AND [x_12].[ResourceID] = [c5n].[Id]
							) as [ir5ic],
							IIF(EXISTS(
								SELECT
									*
								FROM
									[RefOutfeedTransportOrderResourceDTO] [x_13]
								WHERE
									[x_13].[ResourceID] = [c5n].[Id]
							), 1, 0) as [ror5],
							IIF(EXISTS(
								SELECT
									*
								FROM
									[InventoryResourceDTO] [x_14]
								WHERE
									[x_14].[Status] < 0 AND [x_14].[ResourceID] = [c5n].[Id] AND
									([x_14].[InfeedAdviceID] IS NULL OR EXISTS(
										SELECT
											*
										FROM
											[InfeedAdvicePositionDTO] [y_4]
										WHERE
											[y_4].[Id] = [x_14].[InfeedAdviceID] AND [y_4].[InfeedAdviceType] = 0
									))
							), 1, 0) as [ir5mim]
						FROM
							(
								SELECT
									[t7].[Id],
									[t7].[AisleID],
									[t7].[MaterialID],
									[t7].[Id_1],
									[t7].[AisleNumber],
									[t7].[PlantID],
									[t7].[Name],
									[t7].[m_1],
									[t7].[MaterialNumber],
									[t7].[MaterialDescription_1],
									[t7].[MaterialDescription_2],
									[t7].[MaterialDescription_3],
									[t7].[CategoryABC],
									[t7].[CategoryCustoms],
									[t7].[CategoryDimensions],
									[t7].[CategoryQuality],
									[t7].[CategoryTemperature],
									[t7].[Id_2],
									[t7].[ChannelID],
									[t7].[DepthCoordinate],
									[t7].[Status],
									[t7].[Name_1],
									[t7].[HeightClass],
									[t7].[CategoryABC_1],
									[t7].[AisleNumber_1],
									[t7].[c1],
									[t7].[ResourceLabel],
									[t7].[Status_1],
									[t7].[CustomLong2],
									[t7].[HeightClass_1],
									[t7].[TypeID],
									[t7].[m1],
									[t7].[MaterialNumber_1],
									[t7].[MaterialDescription_1_1],
									[t7].[CategoryABC_2],
									[t7].[i1],
									[t7].[BatchNumber],
									[t7].[ProductStatus],
									[t7].[ExpiryDate],
									[t7].[CustomDate1],
									[t7].[ir1ic],
									[t7].[ror1],
									[t7].[ir1mim],
									[t7].[Id_3],
									[t7].[ChannelID_1],
									[t7].[DepthCoordinate_1],
									[t7].[Status_2],
									[t7].[Name_2],
									[t7].[HeightClass_2],
									[t7].[CategoryABC_3],
									[t7].[AisleNumber_2],
									[t7].[c2],
									[t7].[ResourceLabel_1],
									[t7].[Status_3],
									[t7].[CustomLong2_1],
									[t7].[HeightClass_3],
									[t7].[TypeID_1],
									[t7].[m2],
									[t7].[MaterialNumber_2],
									[t7].[MaterialDescription_1_2],
									[t7].[CategoryABC_4],
									[t7].[i2],
									[t7].[BatchNumber_1],
									[t7].[ProductStatus_1],
									[t7].[ExpiryDate_1],
									[t7].[CustomDate1_1],
									[t7].[ir2ic],
									[t7].[ror2],
									[t7].[ir2mim],
									[t7].[Id_4],
									[t7].[ChannelID_2],
									[t7].[DepthCoordinate_2],
									[t7].[Status_4],
									[t7].[Name_3],
									[t7].[HeightClass_4],
									[t7].[CategoryABC_5],
									[t7].[AisleNumber_3],
									[t7].[c3],
									[t7].[ResourceLabel_2],
									[t7].[Status_5],
									[t7].[CustomLong2_2],
									[t7].[HeightClass_5],
									[t7].[TypeID_2],
									[t7].[m3],
									[t7].[MaterialNumber_3],
									[t7].[MaterialDescription_1_3],
									[t7].[CategoryABC_6],
									[t7].[i3],
									[t7].[BatchNumber_2],
									[t7].[ProductStatus_2],
									[t7].[ExpiryDate_2],
									[t7].[CustomDate1_2],
									[t7].[ir3ic],
									[t7].[ror3],
									[t7].[ir3mim],
									[a4n].[Id] as [Id_5],
									[a4n].[ChannelID] as [ChannelID_3],
									[a4n].[DepthCoordinate] as [DepthCoordinate_3],
									[a4n].[Status] as [Status_6],
									[a4n].[Name] as [Name_4],
									[a4n].[HeightClass] as [HeightClass_6],
									[a4n].[CategoryABC] as [CategoryABC_7],
									[a4n].[AisleNumber] as [AisleNumber_4],
									[c4n].[Id] as [c4],
									[c4n].[ResourceLabel] as [ResourceLabel_3],
									[c4n].[Status] as [Status_7],
									[c4n].[CustomLong2] as [CustomLong2_3],
									[c4n].[HeightClass] as [HeightClass_7],
									[c4n].[TypeID] as [TypeID_3],
									[m4n].[Id] as [m4],
									[m4n].[MaterialNumber] as [MaterialNumber_4],
									[m4n].[MaterialDescription_1] as [MaterialDescription_1_4],
									[m4n].[CategoryABC] as [CategoryABC_8],
									[t6].[i4],
									[t6].[BatchNumber] as [BatchNumber_3],
									[t6].[ProductStatus] as [ProductStatus_3],
									[t6].[ExpiryDate] as [ExpiryDate_3],
									[t6].[CustomDate1] as [CustomDate1_3],
									(
										SELECT
											Count(*)
										FROM
											[InventoryResourceDTO] [x_9]
										WHERE
											[x_9].[Status] < 0 AND [x_9].[ResourceID] = [c4n].[Id]
									) as [ir4ic],
									IIF(EXISTS(
										SELECT
											*
										FROM
											[RefOutfeedTransportOrderResourceDTO] [x_10]
										WHERE
											[x_10].[ResourceID] = [c4n].[Id]
									), 1, 0) as [ror4],
									IIF(EXISTS(
										SELECT
											*
										FROM
											[InventoryResourceDTO] [x_11]
										WHERE
											[x_11].[Status] < 0 AND [x_11].[ResourceID] = [c4n].[Id] AND
											([x_11].[InfeedAdviceID] IS NULL OR EXISTS(
												SELECT
													*
												FROM
													[InfeedAdvicePositionDTO] [y_3]
												WHERE
													[y_3].[Id] = [x_11].[InfeedAdviceID] AND [y_3].[InfeedAdviceType] = 0
											))
									), 1, 0) as [ir4mim]
								FROM
									(
										SELECT
											[t5].[Id],
											[t5].[AisleID],
											[t5].[MaterialID],
											[t5].[Id_1],
											[t5].[AisleNumber],
											[t5].[PlantID],
											[t5].[Name],
											[t5].[m_1],
											[t5].[MaterialNumber],
											[t5].[MaterialDescription_1],
											[t5].[MaterialDescription_2],
											[t5].[MaterialDescription_3],
											[t5].[CategoryABC],
											[t5].[CategoryCustoms],
											[t5].[CategoryDimensions],
											[t5].[CategoryQuality],
											[t5].[CategoryTemperature],
											[t5].[Id_2],
											[t5].[ChannelID],
											[t5].[DepthCoordinate],
											[t5].[Status],
											[t5].[Name_1],
											[t5].[HeightClass],
											[t5].[CategoryABC_1],
											[t5].[AisleNumber_1],
											[t5].[c1],
											[t5].[ResourceLabel],
											[t5].[Status_1],
											[t5].[CustomLong2],
											[t5].[HeightClass_1],
											[t5].[TypeID],
											[t5].[m1],
											[t5].[MaterialNumber_1],
											[t5].[MaterialDescription_1_1],
											[t5].[CategoryABC_2],
											[t5].[i1],
											[t5].[BatchNumber],
											[t5].[ProductStatus],
											[t5].[ExpiryDate],
											[t5].[CustomDate1],
											[t5].[ir1ic],
											[t5].[ror1],
											[t5].[ir1mim],
											[t5].[Id_3],
											[t5].[ChannelID_1],
											[t5].[DepthCoordinate_1],
											[t5].[Status_2],
											[t5].[Name_2],
											[t5].[HeightClass_2],
											[t5].[CategoryABC_3],
											[t5].[AisleNumber_2],
											[t5].[c2],
											[t5].[ResourceLabel_1],
											[t5].[Status_3],
											[t5].[CustomLong2_1],
											[t5].[HeightClass_3],
											[t5].[TypeID_1],
											[t5].[m2],
											[t5].[MaterialNumber_2],
											[t5].[MaterialDescription_1_2],
											[t5].[CategoryABC_4],
											[t5].[i2],
											[t5].[BatchNumber_1],
											[t5].[ProductStatus_1],
											[t5].[ExpiryDate_1],
											[t5].[CustomDate1_1],
											[t5].[ir2ic],
											[t5].[ror2],
											[t5].[ir2mim],
											[a3n].[Id] as [Id_4],
											[a3n].[ChannelID] as [ChannelID_2],
											[a3n].[DepthCoordinate] as [DepthCoordinate_2],
											[a3n].[Status] as [Status_4],
											[a3n].[Name] as [Name_3],
											[a3n].[HeightClass] as [HeightClass_4],
											[a3n].[CategoryABC] as [CategoryABC_5],
											[a3n].[AisleNumber] as [AisleNumber_3],
											[c3n].[Id] as [c3],
											[c3n].[ResourceLabel] as [ResourceLabel_2],
											[c3n].[Status] as [Status_5],
											[c3n].[CustomLong2] as [CustomLong2_2],
											[c3n].[HeightClass] as [HeightClass_5],
											[c3n].[TypeID] as [TypeID_2],
											[m3n].[Id] as [m3],
											[m3n].[MaterialNumber] as [MaterialNumber_3],
											[m3n].[MaterialDescription_1] as [MaterialDescription_1_3],
											[m3n].[CategoryABC] as [CategoryABC_6],
											[t4].[i3],
											[t4].[BatchNumber] as [BatchNumber_2],
											[t4].[ProductStatus] as [ProductStatus_2],
											[t4].[ExpiryDate] as [ExpiryDate_2],
											[t4].[CustomDate1] as [CustomDate1_2],
											(
												SELECT
													Count(*)
												FROM
													[InventoryResourceDTO] [x_6]
												WHERE
													[x_6].[Status] < 0 AND [x_6].[ResourceID] = [c3n].[Id]
											) as [ir3ic],
											IIF(EXISTS(
												SELECT
													*
												FROM
													[RefOutfeedTransportOrderResourceDTO] [x_7]
												WHERE
													[x_7].[ResourceID] = [c3n].[Id]
											), 1, 0) as [ror3],
											IIF(EXISTS(
												SELECT
													*
												FROM
													[InventoryResourceDTO] [x_8]
												WHERE
													[x_8].[Status] < 0 AND [x_8].[ResourceID] = [c3n].[Id] AND
													([x_8].[InfeedAdviceID] IS NULL OR EXISTS(
														SELECT
															*
														FROM
															[InfeedAdvicePositionDTO] [y_2]
														WHERE
															[y_2].[Id] = [x_8].[InfeedAdviceID] AND [y_2].[InfeedAdviceType] = 0
													))
											), 1, 0) as [ir3mim]
										FROM
											(
												SELECT
													[t3].[Id],
													[t3].[AisleID],
													[t3].[MaterialID],
													[t3].[Id_1],
													[t3].[AisleNumber],
													[t3].[PlantID],
													[t3].[Name],
													[t3].[m_1],
													[t3].[MaterialNumber],
													[t3].[MaterialDescription_1],
													[t3].[MaterialDescription_2],
													[t3].[MaterialDescription_3],
													[t3].[CategoryABC],
													[t3].[CategoryCustoms],
													[t3].[CategoryDimensions],
													[t3].[CategoryQuality],
													[t3].[CategoryTemperature],
													[t3].[Id_2],
													[t3].[ChannelID],
													[t3].[DepthCoordinate],
													[t3].[Status],
													[t3].[Name_1],
													[t3].[HeightClass],
													[t3].[CategoryABC_1],
													[t3].[AisleNumber_1],
													[t3].[c1],
													[t3].[ResourceLabel],
													[t3].[Status_1],
													[t3].[CustomLong2],
													[t3].[HeightClass_1],
													[t3].[TypeID],
													[t3].[m1],
													[t3].[MaterialNumber_1],
													[t3].[MaterialDescription_1_1],
													[t3].[CategoryABC_2],
													[t3].[i1],
													[t3].[BatchNumber],
													[t3].[ProductStatus],
													[t3].[ExpiryDate],
													[t3].[CustomDate1],
													[t3].[ir1ic],
													[t3].[ror1],
													[t3].[ir1mim],
													[a2n].[Id] as [Id_3],
													[a2n].[ChannelID] as [ChannelID_1],
													[a2n].[DepthCoordinate] as [DepthCoordinate_1],
													[a2n].[Status] as [Status_2],
													[a2n].[Name] as [Name_2],
													[a2n].[HeightClass] as [HeightClass_2],
													[a2n].[CategoryABC] as [CategoryABC_3],
													[a2n].[AisleNumber] as [AisleNumber_2],
													[c2n].[Id] as [c2],
													[c2n].[ResourceLabel] as [ResourceLabel_1],
													[c2n].[Status] as [Status_3],
													[c2n].[CustomLong2] as [CustomLong2_1],
													[c2n].[HeightClass] as [HeightClass_3],
													[c2n].[TypeID] as [TypeID_1],
													[m2n].[Id] as [m2],
													[m2n].[MaterialNumber] as [MaterialNumber_2],
													[m2n].[MaterialDescription_1] as [MaterialDescription_1_2],
													[m2n].[CategoryABC] as [CategoryABC_4],
													[t2].[i2],
													[t2].[BatchNumber] as [BatchNumber_1],
													[t2].[ProductStatus] as [ProductStatus_1],
													[t2].[ExpiryDate] as [ExpiryDate_1],
													[t2].[CustomDate1] as [CustomDate1_1],
													(
														SELECT
															Count(*)
														FROM
															[InventoryResourceDTO] [x_3]
														WHERE
															[x_3].[Status] < 0 AND [x_3].[ResourceID] = [c2n].[Id]
													) as [ir2ic],
													IIF(EXISTS(
														SELECT
															*
														FROM
															[RefOutfeedTransportOrderResourceDTO] [x_4]
														WHERE
															[x_4].[ResourceID] = [c2n].[Id]
													), 1, 0) as [ror2],
													IIF(EXISTS(
														SELECT
															*
														FROM
															[InventoryResourceDTO] [x_5]
														WHERE
															[x_5].[Status] < 0 AND [x_5].[ResourceID] = [c2n].[Id] AND
															([x_5].[InfeedAdviceID] IS NULL OR EXISTS(
																SELECT
																	*
																FROM
																	[InfeedAdvicePositionDTO] [y_1]
																WHERE
																	[y_1].[Id] = [x_5].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 0
															))
													), 1, 0) as [ir2mim]
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
															[mn].[Id] as [m_1],
															[mn].[MaterialNumber],
															[mn].[MaterialDescription_1],
															[mn].[MaterialDescription_2],
															[mn].[MaterialDescription_3],
															[mn].[CategoryABC],
															[mn].[CategoryCustoms],
															[mn].[CategoryDimensions],
															[mn].[CategoryQuality],
															[mn].[CategoryTemperature],
															[a1n].[Id] as [Id_2],
															[a1n].[ChannelID],
															[a1n].[DepthCoordinate],
															[a1n].[Status],
															[a1n].[Name] as [Name_1],
															[a1n].[HeightClass],
															[a1n].[CategoryABC] as [CategoryABC_1],
															[a1n].[AisleNumber] as [AisleNumber_1],
															[c1n].[Id] as [c1],
															[c1n].[ResourceLabel],
															[c1n].[Status] as [Status_1],
															[c1n].[CustomLong2],
															[c1n].[HeightClass] as [HeightClass_1],
															[c1n].[TypeID],
															[m1n].[Id] as [m1],
															[m1n].[MaterialNumber] as [MaterialNumber_1],
															[m1n].[MaterialDescription_1] as [MaterialDescription_1_1],
															[m1n].[CategoryABC] as [CategoryABC_2],
															[t1].[i1],
															[t1].[BatchNumber],
															[t1].[ProductStatus],
															[t1].[ExpiryDate],
															[t1].[CustomDate1],
															(
																SELECT
																	Count(*)
																FROM
																	[InventoryResourceDTO] [x]
																WHERE
																	[x].[Status] < 0 AND [x].[ResourceID] = [c1n].[Id]
															) as [ir1ic],
															IIF(EXISTS(
																SELECT
																	*
																FROM
																	[RefOutfeedTransportOrderResourceDTO] [x_1]
																WHERE
																	[x_1].[ResourceID] = [c1n].[Id]
															), 1, 0) as [ror1],
															IIF(EXISTS(
																SELECT
																	*
																FROM
																	[InventoryResourceDTO] [x_2]
																WHERE
																	[x_2].[Status] < 0 AND [x_2].[ResourceID] = [c1n].[Id] AND
																	([x_2].[InfeedAdviceID] IS NULL OR EXISTS(
																		SELECT
																			*
																		FROM
																			[InfeedAdvicePositionDTO] [y]
																		WHERE
																			[y].[Id] = [x_2].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 0
																	))
															), 1, 0) as [ir1mim]
														FROM
															[ChannelDTO] [c_1]
																INNER JOIN [AisleDTO] [a] ON [c_1].[AisleID] = [a].[Id]
																LEFT JOIN [MaterialDTO] [mn] ON [c_1].[MaterialID] = [mn].[Id]
																LEFT JOIN [StorageShelfDTO] [a1n] ON [c_1].[Id] = [a1n].[ChannelID] AND 1 = [a1n].[DepthCoordinate]
																LEFT JOIN [RefResourceStorageShelfDTO] [b1n] ON [a1n].[Id] = [b1n].[StorageShelfID]
																LEFT JOIN [WmsLoadCarrierDTO] [c1n] ON [b1n].[ResourceID] = [c1n].[Id]
																LEFT JOIN (
																	SELECT
																		[x_24].[Id] as [i1],
																		[x_24].[MaterialID],
																		[x_24].[BatchNumber],
																		[x_24].[ProductStatus],
																		[x_24].[ExpiryDate],
																		[x_24].[CustomDate1]
																	FROM
																		[InventoryResourceDTO] [x_24]
																	WHERE
																		[x_24].[Status] < 0
																) [t1] ON (
																	SELECT TOP (@take)
																		[x_25].[Id]
																	FROM
																		[InventoryResourceDTO] [x_25]
																	WHERE
																		[x_25].[Status] < 0 AND [x_25].[ResourceID] = [b1n].[ResourceID]
																) = [t1].[i1]
																LEFT JOIN [MaterialDTO] [m1n] ON [t1].[MaterialID] = [m1n].[Id]
													) [t3]
														LEFT JOIN [StorageShelfDTO] [a2n] ON [t3].[Id] = [a2n].[ChannelID] AND 2 = [a2n].[DepthCoordinate]
														LEFT JOIN [RefResourceStorageShelfDTO] [b2n] ON [a2n].[Id] = [b2n].[StorageShelfID]
														LEFT JOIN [WmsLoadCarrierDTO] [c2n] ON [b2n].[ResourceID] = [c2n].[Id]
														LEFT JOIN (
															SELECT
																[x_26].[Id] as [i2],
																[x_26].[MaterialID],
																[x_26].[BatchNumber],
																[x_26].[ProductStatus],
																[x_26].[ExpiryDate],
																[x_26].[CustomDate1]
															FROM
																[InventoryResourceDTO] [x_26]
															WHERE
																[x_26].[Status] < 0
														) [t2] ON (
															SELECT TOP (@take_1)
																[x_27].[Id]
															FROM
																[InventoryResourceDTO] [x_27]
															WHERE
																[x_27].[Status] < 0 AND [x_27].[ResourceID] = [b2n].[ResourceID]
														) = [t2].[i2]
														LEFT JOIN [MaterialDTO] [m2n] ON [t2].[MaterialID] = [m2n].[Id]
											) [t5]
												LEFT JOIN [StorageShelfDTO] [a3n] ON [t5].[Id] = [a3n].[ChannelID] AND 3 = [a3n].[DepthCoordinate]
												LEFT JOIN [RefResourceStorageShelfDTO] [b3n] ON [a3n].[Id] = [b3n].[StorageShelfID]
												LEFT JOIN [WmsLoadCarrierDTO] [c3n] ON [b3n].[ResourceID] = [c3n].[Id]
												LEFT JOIN (
													SELECT
														[x_28].[Id] as [i3],
														[x_28].[MaterialID],
														[x_28].[BatchNumber],
														[x_28].[ProductStatus],
														[x_28].[ExpiryDate],
														[x_28].[CustomDate1]
													FROM
														[InventoryResourceDTO] [x_28]
													WHERE
														[x_28].[Status] < 0
												) [t4] ON (
													SELECT TOP (@take_2)
														[x_29].[Id]
													FROM
														[InventoryResourceDTO] [x_29]
													WHERE
														[x_29].[Status] < 0 AND [x_29].[ResourceID] = [b3n].[ResourceID]
												) = [t4].[i3]
												LEFT JOIN [MaterialDTO] [m3n] ON [t4].[MaterialID] = [m3n].[Id]
									) [t7]
										LEFT JOIN [StorageShelfDTO] [a4n] ON [t7].[Id] = [a4n].[ChannelID] AND 4 = [a4n].[DepthCoordinate]
										LEFT JOIN [RefResourceStorageShelfDTO] [b4n] ON [a4n].[Id] = [b4n].[StorageShelfID]
										LEFT JOIN [WmsLoadCarrierDTO] [c4n] ON [b4n].[ResourceID] = [c4n].[Id]
										LEFT JOIN (
											SELECT
												[x_30].[Id] as [i4],
												[x_30].[MaterialID],
												[x_30].[BatchNumber],
												[x_30].[ProductStatus],
												[x_30].[ExpiryDate],
												[x_30].[CustomDate1]
											FROM
												[InventoryResourceDTO] [x_30]
											WHERE
												[x_30].[Status] < 0
										) [t6] ON (
											SELECT TOP (@take_3)
												[x_31].[Id]
											FROM
												[InventoryResourceDTO] [x_31]
											WHERE
												[x_31].[Status] < 0 AND [x_31].[ResourceID] = [b4n].[ResourceID]
										) = [t6].[i4]
										LEFT JOIN [MaterialDTO] [m4n] ON [t6].[MaterialID] = [m4n].[Id]
							) [t9]
								LEFT JOIN [StorageShelfDTO] [a5n] ON [t9].[Id] = [a5n].[ChannelID] AND 5 = [a5n].[DepthCoordinate]
								LEFT JOIN [RefResourceStorageShelfDTO] [b5n] ON [a5n].[Id] = [b5n].[StorageShelfID]
								LEFT JOIN [WmsLoadCarrierDTO] [c5n] ON [b5n].[ResourceID] = [c5n].[Id]
								LEFT JOIN (
									SELECT
										[x_32].[Id] as [i5],
										[x_32].[MaterialID],
										[x_32].[BatchNumber],
										[x_32].[ProductStatus],
										[x_32].[ExpiryDate],
										[x_32].[CustomDate1]
									FROM
										[InventoryResourceDTO] [x_32]
									WHERE
										[x_32].[Status] < 0
								) [t8] ON (
									SELECT TOP (@take_4)
										[x_33].[Id]
									FROM
										[InventoryResourceDTO] [x_33]
									WHERE
										[x_33].[Status] < 0 AND [x_33].[ResourceID] = [b5n].[ResourceID]
								) = [t8].[i5]
								LEFT JOIN [MaterialDTO] [m5n] ON [t8].[MaterialID] = [m5n].[Id]
					) [t11]
						LEFT JOIN [StorageShelfDTO] [a6n] ON [t11].[Id] = [a6n].[ChannelID] AND 6 = [a6n].[DepthCoordinate]
						LEFT JOIN [RefResourceStorageShelfDTO] [b6n] ON [a6n].[Id] = [b6n].[StorageShelfID]
						LEFT JOIN [WmsLoadCarrierDTO] [c6n] ON [b6n].[ResourceID] = [c6n].[Id]
						LEFT JOIN (
							SELECT
								[x_34].[Id] as [i6],
								[x_34].[MaterialID],
								[x_34].[BatchNumber],
								[x_34].[ProductStatus],
								[x_34].[ExpiryDate],
								[x_34].[CustomDate1]
							FROM
								[InventoryResourceDTO] [x_34]
							WHERE
								[x_34].[Status] < 0
						) [t10] ON (
							SELECT TOP (@take_5)
								[x_35].[Id]
							FROM
								[InventoryResourceDTO] [x_35]
							WHERE
								[x_35].[Status] < 0 AND [x_35].[ResourceID] = [b6n].[ResourceID]
						) = [t10].[i6]
						LEFT JOIN [MaterialDTO] [m6n] ON [t10].[MaterialID] = [m6n].[Id]
			) [t13]
				LEFT JOIN [StorageShelfDTO] [a7n] ON [t13].[Id] = [a7n].[ChannelID] AND 7 = [a7n].[DepthCoordinate]
				LEFT JOIN [RefResourceStorageShelfDTO] [b7n] ON [a7n].[Id] = [b7n].[StorageShelfID]
				LEFT JOIN [WmsLoadCarrierDTO] [c7n] ON [b7n].[ResourceID] = [c7n].[Id]
				LEFT JOIN (
					SELECT
						[x_36].[Id] as [i7],
						[x_36].[MaterialID],
						[x_36].[BatchNumber],
						[x_36].[ProductStatus],
						[x_36].[ExpiryDate],
						[x_36].[CustomDate1]
					FROM
						[InventoryResourceDTO] [x_36]
					WHERE
						[x_36].[Status] < 0
				) [t12] ON (
					SELECT TOP (@take_6)
						[x_37].[Id]
					FROM
						[InventoryResourceDTO] [x_37]
					WHERE
						[x_37].[Status] < 0 AND [x_37].[ResourceID] = [b7n].[ResourceID]
				) = [t12].[i7]
				LEFT JOIN [MaterialDTO] [m7n] ON [t12].[MaterialID] = [m7n].[Id]
	) [x_40]
		LEFT JOIN [StorageShelfDTO] [a8n] ON [x_40].[Id] = [a8n].[ChannelID] AND 8 = [a8n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b8n] ON [a8n].[Id] = [b8n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c8n] ON [b8n].[ResourceID] = [c8n].[Id]
		LEFT JOIN (
			SELECT
				[x_38].[Id] as [i8],
				[x_38].[MaterialID],
				[x_38].[BatchNumber],
				[x_38].[ProductStatus],
				[x_38].[ExpiryDate],
				[x_38].[CustomDate1]
			FROM
				[InventoryResourceDTO] [x_38]
			WHERE
				[x_38].[Status] < 0
		) [t14] ON (
			SELECT TOP (@take_7)
				[x_39].[Id]
			FROM
				[InventoryResourceDTO] [x_39]
			WHERE
				[x_39].[Status] < 0 AND [x_39].[ResourceID] = [b8n].[ResourceID]
		) = [t14].[i8]
		LEFT JOIN [MaterialDTO] [m8n] ON [t14].[MaterialID] = [m8n].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [RefResourceStorageShelfDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [StorageShelfDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [RefOutfeedTransportOrderResourceDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [MaterialDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ChannelDTO]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [AisleDTO]

