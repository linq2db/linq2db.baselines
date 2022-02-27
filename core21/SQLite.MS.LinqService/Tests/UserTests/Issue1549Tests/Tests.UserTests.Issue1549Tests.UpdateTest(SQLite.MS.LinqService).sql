BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [billing_devtypes]
(
	[devtypeid]  INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[typename]   NVarChar(50)  NOT NULL,
	[GlobalType] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [billing_devices]
(
	[devid]     NVarChar(50) NOT NULL,
	[sernum]    NVarChar(50)     NULL,
	[devtypeid] INTEGER      NOT NULL,

	CONSTRAINT [PK_billing_devices] PRIMARY KEY ([devid])
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [billing_DevReadingType]
(
	[Id]             INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[DevTypeId]      INTEGER       NOT NULL,
	[Name]           NVarChar(50)  NOT NULL,
	[Responsibility] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [billing_TempReading]
(
	[id]               INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[DevSerNum]        NVarChar(50)  NOT NULL,
	[devid]            NVarChar(50)      NULL,
	[tsdevice]         DateTime2     NOT NULL,
	[value]            Decimal       NOT NULL,
	[Devtypeid]        INTEGER           NULL,
	[DevReadingTypeId] INTEGER           NULL,
	[ReadingTypeName]  NVarChar(50)      NULL,
	[DevGlobalType]    INTEGER       NOT NULL,
	[Responsibility]   INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[billing_TempReading]
SET
	[DevReadingTypeId] = (
		SELECT
			[drt].[Id]
		FROM
			[billing_TempReading] [tr]
				INNER JOIN [billing_DevReadingType] [drt] ON [drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid]
		WHERE
			[billing_TempReading].[id] = [tr].[id]
	),
	[Responsibility] = (
		SELECT
			[drt_1].[Responsibility]
		FROM
			[billing_TempReading] [tr_1]
				INNER JOIN [billing_DevReadingType] [drt_1] ON [drt_1].[Name] = [tr_1].[ReadingTypeName] AND [drt_1].[DevTypeId] = [tr_1].[Devtypeid]
		WHERE
			[billing_TempReading].[id] = [tr_1].[id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[billing_TempReading] [tr_2]
				INNER JOIN [billing_DevReadingType] [drt_2] ON [drt_2].[Name] = [tr_2].[ReadingTypeName] AND [drt_2].[DevTypeId] = [tr_2].[Devtypeid]
		WHERE
			[billing_TempReading].[id] = [tr_2].[id]
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @take_1  -- Int32
SET     @take_1 = 1

UPDATE
	[billing_TempReading]
SET
	[DevReadingTypeId] = (
		SELECT
			[w].[Id]
		FROM
			[billing_DevReadingType] [w]
		WHERE
			[w].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w].[DevTypeId] = [billing_TempReading].[Devtypeid]
		LIMIT @take
	),
	[Responsibility] = (
		SELECT
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w_1].[DevTypeId] = [billing_TempReading].[Devtypeid]
		LIMIT @take_1
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [billing_TempReading]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [billing_DevReadingType]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [billing_devices]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [billing_devtypes]

