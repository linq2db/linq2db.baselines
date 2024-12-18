BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Author') IS NOT NULL)
	DROP TABLE [Author]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Author') IS NULL)
	EXECUTE('
		CREATE TABLE [Author]
		(
			[AuthorId]   Int           NOT NULL,
			[AuthorName] NVarChar(255)     NULL,

			CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED ([AuthorId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 1
DECLARE @AuthorName UniVarChar(12) -- String
SET     @AuthorName = 'Stephen King'

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 2
DECLARE @AuthorName UniVarChar(14) -- String
SET     @AuthorName = 'Harry Harrison'

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @AuthorId Integer -- Int32
SET     @AuthorId = 3
DECLARE @AuthorName UniVarChar(20) -- String
SET     @AuthorName = 'Roger Joseph Zelazny'

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
VALUES
(
	@AuthorId,
	@AuthorName
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Book') IS NOT NULL)
	DROP TABLE [Book]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Book') IS NULL)
	EXECUTE('
		CREATE TABLE [Book]
		(
			[BookId]        Int           NOT NULL,
			[Discriminator] NVarChar(255)     NULL,
			[BookName]      NVarChar(255)     NULL,
			[RomanScore]    Int               NULL,
			[NovelScore]    Int               NULL,

			CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED ([BookId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 11
DECLARE @BookName UniVarChar(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
SET     @RomanScore = 4

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[RomanScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 12
DECLARE @BookName UniVarChar(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer -- Int32
SET     @NovelScore = 0

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[NovelScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 13
DECLARE @BookName UniVarChar(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
SET     @RomanScore = 3

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[RomanScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 21
DECLARE @BookName UniVarChar(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
SET     @RomanScore = 1

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[RomanScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 22
DECLARE @BookName UniVarChar(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer -- Int32
SET     @NovelScore = 0

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[NovelScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 23
DECLARE @BookName UniVarChar(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
SET     @RomanScore = 0

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[RomanScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 31
DECLARE @BookName UniVarChar(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
SET     @RomanScore = 5

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[RomanScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 32
DECLARE @BookName UniVarChar(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Novel'
DECLARE @NovelScore Integer -- Int32
SET     @NovelScore = 0

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[NovelScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@NovelScore
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BookId Integer -- Int32
SET     @BookId = 33
DECLARE @BookName UniVarChar(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator UniVarChar(5) -- String
SET     @Discriminator = 'Roman'
DECLARE @RomanScore Integer -- Int32
SET     @RomanScore = 7

INSERT INTO [Book]
(
	[BookId],
	[BookName],
	[Discriminator],
	[RomanScore]
)
VALUES
(
	@BookId,
	@BookName,
	@Discriminator,
	@RomanScore
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BookAuthor') IS NOT NULL)
	DROP TABLE [BookAuthor]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BookAuthor') IS NULL)
	EXECUTE('
		CREATE TABLE [BookAuthor]
		(
			[FkBookId]   Int NOT NULL,
			[FkAuthorId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 11
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 1

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 12
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 1

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 13
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 1

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 21
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 2

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 22
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 2

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 23
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 2

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 31
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 3

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 32
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 3

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FkBookId Integer -- Int32
SET     @FkBookId = 33
DECLARE @FkAuthorId Integer -- Int32
SET     @FkAuthorId = 3

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(
	@FkBookId,
	@FkAuthorId
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT
	[a_Book].[Discriminator],
	[a_Book].[BookName]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = 'Roman' AND [a_Book].[Discriminator] IS NOT NULL AND
	EXISTS(
		SELECT
			*
		FROM
			[Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
				LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
		WHERE
			[a_Book_1].[Discriminator] = 'Novel' AND
			[a_Book_1].[Discriminator] IS NOT NULL AND
			([a_Book].[Discriminator] = [a_Book_1].[Discriminator] AND [a_Book].[Discriminator] IS NOT NULL AND [a_Book_1].[Discriminator] IS NOT NULL OR [a_Book].[Discriminator] IS NULL AND [a_Book_1].[Discriminator] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] AND [a_Book].[BookName] IS NOT NULL AND [a_Book_1].[BookName] IS NOT NULL OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] AND [a_Book].[BookName] IS NOT NULL AND [a_Book_1].[BookName] IS NOT NULL OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL)
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[BookId],
	[m_1].[AuthorId],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[a_Book].[BookId],
			[t2].[AuthorId]
		FROM
			(
				SELECT DISTINCT
					[t1].[AuthorId]
				FROM
					[Author] [t1]
			) [t2]
				INNER JOIN [BookAuthor] [d] ON [d].[FkAuthorId] = [t2].[AuthorId]
				LEFT JOIN [Book] [a_Book] ON [d].[FkBookId] = [a_Book].[BookId]
	) [m_1]
		INNER JOIN [BookAuthor] [d_1] ON [d_1].[FkBookId] = [m_1].[BookId] AND [m_1].[BookId] IS NOT NULL
		LEFT JOIN [Author] [a_Author] ON [d_1].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[AuthorId],
	[a_Book].[BookId],
	[a_Book].[Discriminator],
	[a_Book].[BookName],
	[a_Book].[NovelScore],
	[a_Book].[RomanScore]
FROM
	[Author] [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkAuthorId] = [m_1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [d].[FkBookId] = [a_Book].[BookId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Author') IS NOT NULL)
	DROP TABLE [Author]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Book') IS NOT NULL)
	DROP TABLE [Book]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BookAuthor') IS NOT NULL)
	DROP TABLE [BookAuthor]

