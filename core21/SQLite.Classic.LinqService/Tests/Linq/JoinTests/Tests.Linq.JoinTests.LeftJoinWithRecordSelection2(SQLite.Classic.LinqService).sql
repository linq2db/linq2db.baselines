BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Fact]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Tag]
(
	[Id]     INTEGER       NOT NULL,
	[FactId] INTEGER       NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[fact_1].[Id],
	[tag_1].[Id],
	[tag_1].[FactId],
	[tag_1].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [tag_1] ON [tag_1].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Tag]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Fact]

