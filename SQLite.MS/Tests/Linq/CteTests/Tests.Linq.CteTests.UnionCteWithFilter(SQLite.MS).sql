BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Books]
(
	[Id]       INTEGER       NOT NULL,
	[Title]    NVarChar(255) NOT NULL,
	[AuthorId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(1,'Something',1),
(2,'Book',2),
(3,'Boring',3)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Authors]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(1,'John'),
(2,'Steven'),
(3,'Smith')

BeforeExecute
-- SQLite.MS SQLite

WITH [BooksCte] ([Book_Id], [Book_Title], [Author_Name])
AS
(
	SELECT
		[b].[Id],
		[b].[Title],
		[a_Author].[Name]
	FROM
		[Books] [b]
			INNER JOIN [Authors] [a_Author] ON [b].[AuthorId] = [a_Author].[Id]
)
SELECT
	[b_1].[Id]
FROM
	(
		SELECT
			NULL as [Name],
			[r].[Book_Title] as [Title],
			[r].[Book_Id] as [Id]
		FROM
			[BooksCte] [r]
		UNION ALL
		SELECT
			[t1].[Author_Name] as [Name],
			NULL as [Title],
			NULL as [Id]
		FROM
			[BooksCte] [t1]
	) [b_1]
WHERE
	[b_1].[Name] = 'Steven' AND [b_1].[Name] IS NOT NULL OR
	[b_1].[Title] = 'Something' AND [b_1].[Title] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

