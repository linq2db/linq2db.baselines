BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [User]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Resource]
(
	[Id]                 INTEGER NOT NULL,
	[AssociatedObjectId] INTEGER NOT NULL,
	[AssociationTypeId]  INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Lookup]
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
	[c_1].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON [t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id]
		LEFT JOIN [User] [c_1] ON [a_AssociationTypeCode].[Type] = 'us' AND [c_1].[Id] = [t1].[AssociatedObjectId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Lookup]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Resource]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [User]

