﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_devtypes]', N'U') IS NOT NULL)
	DROP TABLE [billing_devtypes]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_devtypes]', N'U') IS NULL)
	CREATE TABLE [billing_devtypes]
	(
		[devtypeid]  Int           NOT NULL IDENTITY,
		[typename]   NVarChar(50)  NOT NULL,
		[GlobalType] Int           NOT NULL,

		CONSTRAINT [PK_billing_devtypes] PRIMARY KEY CLUSTERED ([devtypeid])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_devices]', N'U') IS NOT NULL)
	DROP TABLE [billing_devices]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_devices]', N'U') IS NULL)
	CREATE TABLE [billing_devices]
	(
		[devid]     NVarChar(50) NOT NULL,
		[sernum]    NVarChar(50)     NULL,
		[devtypeid] Int          NOT NULL,

		CONSTRAINT [PK_billing_devices] PRIMARY KEY CLUSTERED ([devid])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_DevReadingType]', N'U') IS NOT NULL)
	DROP TABLE [billing_DevReadingType]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_DevReadingType]', N'U') IS NULL)
	CREATE TABLE [billing_DevReadingType]
	(
		[Id]             Int           NOT NULL IDENTITY,
		[DevTypeId]      Int           NOT NULL,
		[Name]           NVarChar(50)  NOT NULL,
		[Responsibility] Int           NOT NULL,

		CONSTRAINT [PK_billing_DevReadingType] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_TempReading]', N'U') IS NOT NULL)
	DROP TABLE [billing_TempReading]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_TempReading]', N'U') IS NULL)
	CREATE TABLE [billing_TempReading]
	(
		[id]               Int           NOT NULL IDENTITY,
		[DevSerNum]        NVarChar(50)  NOT NULL,
		[devid]            NVarChar(50)      NULL,
		[tsdevice]         DateTime      NOT NULL,
		[value]            Decimal       NOT NULL,
		[Devtypeid]        Int               NULL,
		[DevReadingTypeId] Int               NULL,
		[ReadingTypeName]  NVarChar(50)      NULL,
		[DevGlobalType]    Int           NOT NULL,
		[Responsibility]   Int           NOT NULL,

		CONSTRAINT [PK_billing_TempReading] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2005

UPDATE
	[tr]
SET
	[tr].[DevReadingTypeId] = [drt].[Id],
	[tr].[Responsibility] = [drt].[Responsibility]
FROM
	[billing_TempReading] [tr]
		INNER JOIN [billing_DevReadingType] [drt] ON [drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid]

BeforeExecute
-- SqlServer.2005

UPDATE
	[billing_TempReading]
SET
	[DevReadingTypeId] = (
		SELECT TOP (1)
			[w].[Id]
		FROM
			[billing_DevReadingType] [w]
		WHERE
			[w].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w].[DevTypeId] = [billing_TempReading].[Devtypeid]
	),
	[Responsibility] = (
		SELECT TOP (1)
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w_1].[DevTypeId] = [billing_TempReading].[Devtypeid]
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_TempReading]', N'U') IS NOT NULL)
	DROP TABLE [billing_TempReading]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_DevReadingType]', N'U') IS NOT NULL)
	DROP TABLE [billing_DevReadingType]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_devices]', N'U') IS NOT NULL)
	DROP TABLE [billing_devices]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[billing_devtypes]', N'U') IS NOT NULL)
	DROP TABLE [billing_devtypes]

