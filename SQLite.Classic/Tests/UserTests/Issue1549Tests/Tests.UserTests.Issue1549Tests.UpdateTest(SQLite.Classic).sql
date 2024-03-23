BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_devtypes]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [billing_devtypes]
(
	[devtypeid]  INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[typename]   NVarChar(50)  NOT NULL,
	[GlobalType] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_devices]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [billing_devices]
(
	[devid]     NVarChar(50) NOT NULL,
	[sernum]    NVarChar(50)     NULL,
	[devtypeid] INTEGER      NOT NULL,

	CONSTRAINT [PK_billing_devices] PRIMARY KEY ([devid])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_DevReadingType]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [billing_DevReadingType]
(
	[Id]             INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[DevTypeId]      INTEGER       NOT NULL,
	[Name]           NVarChar(50)  NOT NULL,
	[Responsibility] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_TempReading]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [billing_TempReading]
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
-- SQLite.Classic SQLite

UPDATE
	[billing_TempReading]
SET
	[DevReadingTypeId] = [drt].[Id],
	[Responsibility] = [drt].[Responsibility]
FROM
	[billing_DevReadingType] [drt]
WHERE
	[drt].[Name] = [billing_TempReading].[ReadingTypeName] AND
	[drt].[DevTypeId] = [billing_TempReading].[Devtypeid]

BeforeExecute
-- SQLite.Classic SQLite

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
		LIMIT 1
	),
	[Responsibility] = (
		SELECT
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w_1].[DevTypeId] = [billing_TempReading].[Devtypeid]
		LIMIT 1
	)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_TempReading]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_DevReadingType]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_devices]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [billing_devtypes]

