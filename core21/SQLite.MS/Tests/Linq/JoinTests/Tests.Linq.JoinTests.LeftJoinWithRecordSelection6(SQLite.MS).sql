BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Fact]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Fact]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Tag]
(
	[Id]     INTEGER       NOT NULL,
	[FactId] INTEGER       NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ft].[Id],
	[t].[Id],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [ft]
		LEFT JOIN [Tag] [t] ON [t].[FactId] = [ft].[Id]
WHERE
	[ft].[Id] > 3

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Fact]

