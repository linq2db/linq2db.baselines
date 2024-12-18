BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Books]
(
	[Id]       INTEGER       NOT NULL,
	[Title]    NVarChar(255) NOT NULL,
	[AuthorId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Title NVarChar(9) -- String
SET     @Title = 'Something'
DECLARE @AuthorId  -- Int32
SET     @AuthorId = 1

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Title NVarChar(4) -- String
SET     @Title = 'Book'
DECLARE @AuthorId  -- Int32
SET     @AuthorId = 2

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Title NVarChar(6) -- String
SET     @Title = 'Boring'
DECLARE @AuthorId  -- Int32
SET     @AuthorId = 3

INSERT INTO [Books]
(
	[Id],
	[Title],
	[AuthorId]
)
VALUES
(
	@Id,
	@Title,
	@AuthorId
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Authors]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Steven'

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO [Authors]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Books]

