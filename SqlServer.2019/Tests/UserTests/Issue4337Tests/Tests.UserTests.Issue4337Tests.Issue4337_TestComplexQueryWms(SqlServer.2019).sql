BeforeExecute
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
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[x_10].[Id],
	[x_10].[AisleID],
	[x_10].[MaterialID],
	[x_10].[Id_1],
	[x_10].[AisleNumber],
	[x_10].[PlantID],
	[x_10].[Name],
	[x_10].[m_1],
	[x_10].[MaterialNumber],
	[x_10].[MaterialDescription_1],
	[x_10].[MaterialDescription_2],
	[x_10].[MaterialDescription_3],
	[x_10].[CategoryABC],
	[x_10].[CategoryCustoms],
	[x_10].[CategoryDimensions],
	[x_10].[CategoryQuality],
	[x_10].[CategoryTemperature],
	[x_10].[Id_2],
	[x_10].[ChannelID],
	[x_10].[Name_1],
	[x_10].[Status],
	[x_10].[AisleNumber_1],
	[x_10].[CategoryABC_1],
	[x_10].[HeightClass],
	[x_10].[DepthCoordinate],
	[x_10].[c1],
	[x_10].[ResourceLabel],
	[x_10].[Status_1],
	[x_10].[CustomLong2],
	[x_10].[HeightClass_1],
	[x_10].[TypeID],
	[x_10].[m1],
	[x_10].[MaterialNumber_1],
	[x_10].[MaterialDescription_1_1],
	[x_10].[CategoryABC_2],
	[x_10].[i1],
	[x_10].[BatchNumber],
	[x_10].[ProductStatus],
	[x_10].[ExpiryDate],
	[x_10].[CustomDate1],
	[x_10].[ir1ic],
	[x_10].[ror1],
	[x_10].[ir1mim],
	[a2n].[Id],
	[a2n].[ChannelID],
	[a2n].[Name],
	[a2n].[Status],
	[a2n].[AisleNumber],
	[a2n].[CategoryABC],
	[a2n].[HeightClass],
	[a2n].[DepthCoordinate],
	[c2n].[Id],
	[c2n].[ResourceLabel],
	[c2n].[Status],
	[c2n].[CustomLong2],
	[c2n].[HeightClass],
	[c2n].[TypeID],
	[m2n].[Id],
	[m2n].[MaterialNumber],
	[m2n].[MaterialDescription_1],
	[m2n].[CategoryABC],
	[t2].[i2],
	[t2].[BatchNumber],
	[t2].[ProductStatus],
	[t2].[ExpiryDate],
	[t2].[CustomDate1],
	(
		SELECT
			Count(*)
		FROM
			[InventoryResourceDTO] [x_3]
		WHERE
			[x_3].[Status] < 99 AND [x_3].[ResourceID] = [c2n].[Id]
	),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[RefOutfeedTransportOrderResourceDTO] [x_4]
		WHERE
			[x_4].[ResourceID] = [c2n].[Id]
	), 1, 0),
	IIF(EXISTS(
		SELECT
			*
		FROM
			[InventoryResourceDTO] [x_5]
		WHERE
			[x_5].[Status] < 99 AND [x_5].[ResourceID] = [c2n].[Id] AND
			([x_5].[InfeedAdviceID] IS NULL OR EXISTS(
				SELECT
					*
				FROM
					[InfeedAdvicePositionDTO] [y_1]
				WHERE
					[y_1].[Id] = [x_5].[InfeedAdviceID] AND [y_1].[InfeedAdviceType] = 10
			))
	), 1, 0)
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
			[a1n].[Name] as [Name_1],
			[a1n].[Status],
			[a1n].[AisleNumber] as [AisleNumber_1],
			[a1n].[CategoryABC] as [CategoryABC_1],
			[a1n].[HeightClass],
			[a1n].[DepthCoordinate],
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
					[x].[Status] < 99 AND [x].[ResourceID] = [c1n].[Id]
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
					[x_2].[Status] < 99 AND [x_2].[ResourceID] = [c1n].[Id] AND
					([x_2].[InfeedAdviceID] IS NULL OR EXISTS(
						SELECT
							*
						FROM
							[InfeedAdvicePositionDTO] [y]
						WHERE
							[y].[Id] = [x_2].[InfeedAdviceID] AND [y].[InfeedAdviceType] = 10
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
						[x_6].[Id] as [i1],
						[x_6].[MaterialID],
						[x_6].[BatchNumber],
						[x_6].[ProductStatus],
						[x_6].[ExpiryDate],
						[x_6].[CustomDate1]
					FROM
						[InventoryResourceDTO] [x_6]
					WHERE
						[x_6].[Status] < 99
				) [t1] ON (
					SELECT TOP (@take)
						[x_7].[Id]
					FROM
						[InventoryResourceDTO] [x_7]
					WHERE
						[x_7].[Status] < 99 AND [x_7].[ResourceID] = [b1n].[ResourceID]
				) = [t1].[i1]
				LEFT JOIN [MaterialDTO] [m1n] ON [t1].[MaterialID] = [m1n].[Id]
	) [x_10]
		LEFT JOIN [StorageShelfDTO] [a2n] ON [x_10].[Id] = [a2n].[ChannelID] AND 2 = [a2n].[DepthCoordinate]
		LEFT JOIN [RefResourceStorageShelfDTO] [b2n] ON [a2n].[Id] = [b2n].[StorageShelfID]
		LEFT JOIN [WmsLoadCarrierDTO] [c2n] ON [b2n].[ResourceID] = [c2n].[Id]
		LEFT JOIN (
			SELECT
				[x_8].[Id] as [i2],
				[x_8].[MaterialID],
				[x_8].[BatchNumber],
				[x_8].[ProductStatus],
				[x_8].[ExpiryDate],
				[x_8].[CustomDate1]
			FROM
				[InventoryResourceDTO] [x_8]
			WHERE
				[x_8].[Status] < 99
		) [t2] ON (
			SELECT TOP (@take_1)
				[x_9].[Id]
			FROM
				[InventoryResourceDTO] [x_9]
			WHERE
				[x_9].[Status] < 99 AND [x_9].[ResourceID] = [b2n].[ResourceID]
		) = [t2].[i2]
		LEFT JOIN [MaterialDTO] [m2n] ON [t2].[MaterialID] = [m2n].[Id]

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

