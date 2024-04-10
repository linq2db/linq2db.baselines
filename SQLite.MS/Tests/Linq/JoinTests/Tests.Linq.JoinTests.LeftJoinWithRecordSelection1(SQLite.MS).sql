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
	[fact_1].[Id],
	[leftTag].[Id],
	[leftTag].[FactId],
	[leftTag].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [leftTag] ON [fact_1].[Id] = [leftTag].[FactId]
WHERE
	[fact_1].[Id] > 3
ORDER BY
	[fact_1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Fact]

