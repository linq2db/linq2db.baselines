BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [City3043]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [City3043]
(
	[Name]       NVarChar(255)     NULL,
	[Population] INTEGER       NOT NULL,
	[Id]         INTEGER       NOT NULL,

	CONSTRAINT [PK_City3043] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [City3043]
(
	[Name],
	[Population],
	[Id]
)
VALUES
('City',100,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Street3043]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Street3043]
(
	[CityId]   INTEGER       NOT NULL,
	[CityInfo] NVarChar(255)     NULL,
	[Id]       INTEGER       NOT NULL,

	CONSTRAINT [PK_Street3043] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Street3043]
(
	[CityId],
	[CityInfo],
	[Id]
)
VALUES
(1,NULL,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [House3043]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [House3043]
(
	[StreetId] INTEGER NOT NULL,
	[Id]       INTEGER NOT NULL,

	CONSTRAINT [PK_House3043] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [House3043]
(
	[StreetId],
	[Id]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Person3043]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Person3043]
(
	[Id]      INTEGER NOT NULL,
	[HouseId] INTEGER NOT NULL,

	CONSTRAINT [PK_Person3043] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Person3043]
(
	[Id],
	[HouseId]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Pet3043]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Pet3043]
(
	[Id]       INTEGER NOT NULL,
	[PersonId] INTEGER NOT NULL,

	CONSTRAINT [PK_Pet3043] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Pet3043]
(
	[Id],
	[PersonId]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[a_City].[Name] || ' ' || [a_City].[Population]
FROM
	[Pet3043] [x]
		INNER JOIN [Person3043] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [House3043] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
		LEFT JOIN [Street3043] [a_Street] ON [a_House].[StreetId] = [a_Street].[Id]
		LEFT JOIN [City3043] [a_City] ON [a_Street].[CityId] = [a_City].[Id]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Pet3043]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Person3043]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [House3043]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Street3043]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [City3043]

