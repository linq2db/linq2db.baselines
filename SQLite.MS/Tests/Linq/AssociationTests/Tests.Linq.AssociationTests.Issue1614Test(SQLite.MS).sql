BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Resource]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Resource]
(
	[Id]                 INTEGER NOT NULL,
	[AssociatedObjectId] INTEGER NOT NULL,
	[AssociationTypeId]  INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Lookup]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Lookup]
(
	[Id]   INTEGER       NOT NULL,
	[Type] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[AssociatedObjectId],
	[t1].[AssociationTypeId],
	[a_User].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON [t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id]
		LEFT JOIN [User] [a_User] ON [a_AssociationTypeCode].[Type] = 'us' AND [a_User].[Id] = [t1].[AssociatedObjectId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Lookup]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Resource]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

