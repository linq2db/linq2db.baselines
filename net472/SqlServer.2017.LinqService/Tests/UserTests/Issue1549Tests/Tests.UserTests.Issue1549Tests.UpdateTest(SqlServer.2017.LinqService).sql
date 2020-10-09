BeforeExecute
-- SqlServer.2017

CREATE TABLE [billing_devtypes]
(
	[devtypeid]  Int           NOT NULL IDENTITY,
	[typename]   NVarChar(50)  NOT NULL,
	[GlobalType] Int           NOT NULL,

	CONSTRAINT [PK_billing_devtypes] PRIMARY KEY CLUSTERED ([devtypeid])
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [billing_devices]
(
	[devid]     NVarChar(50) NOT NULL,
	[sernum]    NVarChar(50)     NULL,
	[devtypeid] Int          NOT NULL,

	CONSTRAINT [PK_billing_devices] PRIMARY KEY CLUSTERED ([devid])
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [billing_DevReadingType]
(
	[Id]             Int           NOT NULL IDENTITY,
	[DevTypeId]      Int           NOT NULL,
	[Name]           NVarChar(50)  NOT NULL,
	[Responsibility] Int           NOT NULL,

	CONSTRAINT [PK_billing_DevReadingType] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

UPDATE
	[tr]
SET
	[tr].[DevReadingTypeId] = [drt].[Id],
	[tr].[Responsibility] = [drt].[Responsibility]
FROM
	[billing_TempReading] [tr]
		INNER JOIN [billing_DevReadingType] [drt] ON [drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid]

BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

UPDATE
	[t1]
SET
	[t1].[DevReadingTypeId] = (
		SELECT TOP (@take) 
			[w].[Id]
		FROM
			[billing_DevReadingType] [w]
		WHERE
			[w].[Name] = [t1].[ReadingTypeName] AND [w].[DevTypeId] = [t1].[Devtypeid]
	),
	[t1].[Responsibility] = (
		SELECT TOP (@take_1) 
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [t1].[ReadingTypeName] AND [w_1].[DevTypeId] = [t1].[Devtypeid]
	)
FROM
	[billing_TempReading] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE [billing_TempReading]

BeforeExecute
-- SqlServer.2017

DROP TABLE [billing_DevReadingType]

BeforeExecute
-- SqlServer.2017

DROP TABLE [billing_devices]

BeforeExecute
-- SqlServer.2017

DROP TABLE [billing_devtypes]

