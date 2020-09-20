BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [billing_devtypes]
(
	[devtypeid]  Int          IDENTITY NOT NULL,
	[typename]   NVarChar(50)          NOT NULL,
	[GlobalType] Int                   NOT NULL,

	CONSTRAINT [PK_billing_devtypes] PRIMARY KEY CLUSTERED ([devtypeid])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [billing_devices]
(
	[devid]     NVarChar(50) NOT NULL,
	[sernum]    NVarChar(50)     NULL,
	[devtypeid] Int          NOT NULL,

	CONSTRAINT [PK_billing_devices] PRIMARY KEY CLUSTERED ([devid])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [billing_DevReadingType]
(
	[Id]             Int          IDENTITY NOT NULL,
	[DevTypeId]      Int                   NOT NULL,
	[Name]           NVarChar(50)          NOT NULL,
	[Responsibility] Int                   NOT NULL,

	CONSTRAINT [PK_billing_DevReadingType] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [billing_TempReading]
(
	[id]               Int          IDENTITY NOT NULL,
	[DevSerNum]        NVarChar(50)          NOT NULL,
	[devid]            NVarChar(50)              NULL,
	[tsdevice]         DateTime              NOT NULL,
	[value]            Decimal               NOT NULL,
	[Devtypeid]        Int                       NULL,
	[DevReadingTypeId] Int                       NULL,
	[ReadingTypeName]  NVarChar(50)              NULL,
	[DevGlobalType]    Int                   NOT NULL,
	[Responsibility]   Int                   NOT NULL,

	CONSTRAINT [PK_billing_TempReading] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[billing_TempReading]
SET
	[tr].[DevReadingTypeId] = [drt].[Id],
	[tr].[Responsibility] = [drt].[Responsibility]
FROM
	[billing_TempReading] [tr]
		INNER JOIN [billing_DevReadingType] [drt] ON [drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid]

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[billing_TempReading]
SET
	[t1].[DevReadingTypeId] = (
		SELECT
			[w].[Id]
		FROM
			[billing_DevReadingType] [w]
		WHERE
			[w].[Name] = [t1].[ReadingTypeName] AND [w].[DevTypeId] = [t1].[Devtypeid]
	),
	[t1].[Responsibility] = (
		SELECT
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [t1].[ReadingTypeName] AND [w_1].[DevTypeId] = [t1].[Devtypeid]
	)
FROM
	[billing_TempReading] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [billing_TempReading]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [billing_DevReadingType]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [billing_devices]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [billing_devtypes]

