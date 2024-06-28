BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[GroupId]     INTEGER       NOT NULL,
	[ItemId]      INTEGER       NOT NULL,
	[Description] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ItemAppType]
(
	[AppTypeId] INTEGER NOT NULL,
	[ItemId]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AppType]
(
	[AppTypeId]   INTEGER   NOT NULL,
	[CreatedDate] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AppSubType]
(
	[AppTypeId]    INTEGER       NOT NULL,
	[AppSubTypeId] INTEGER       NOT NULL,
	[Description]  NVarChar(255)     NULL,
	[CreatedDate]  DateTime2     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Item]

