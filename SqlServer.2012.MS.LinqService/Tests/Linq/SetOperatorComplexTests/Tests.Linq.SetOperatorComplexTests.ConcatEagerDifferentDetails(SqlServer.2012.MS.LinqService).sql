BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Author]', N'U') IS NOT NULL)
	DROP TABLE [Author]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Author]', N'U') IS NULL)
	CREATE TABLE [Author]
	(
		[AuthorId]   Int            NOT NULL,
		[AuthorName] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED ([AuthorId])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 1
DECLARE @AuthorName NVarChar(4000) -- String
SET     @AuthorName = N'Stephen King'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 2
DECLARE @AuthorName NVarChar(4000) -- String
SET     @AuthorName = N'Harry Harrison'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 3
DECLARE @AuthorName NVarChar(4000) -- String
SET     @AuthorName = N'Roger Joseph Zelazny'

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
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Book]', N'U') IS NOT NULL)
	DROP TABLE [Book]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Book]', N'U') IS NULL)
	CREATE TABLE [Book]
	(
		[BookId]        Int            NOT NULL,
		[Discriminator] NVarChar(4000)     NULL,
		[BookName]      NVarChar(4000)     NULL,
		[RomanScore]    Int                NULL,
		[NovelScore]    Int                NULL,

		CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED ([BookId])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 11
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Lisey''s Story['
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Roman'
DECLARE @RomanScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 12
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Duma Key'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Novel'
DECLARE @NovelScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 13
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Just After Sunset'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Roman'
DECLARE @RomanScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 21
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Deathworld'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Roman'
DECLARE @RomanScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 22
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'The Stainless Steel Rat'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Novel'
DECLARE @NovelScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 23
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Planet of the Damned'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Roman'
DECLARE @RomanScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 31
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Blood of Amber'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Roman'
DECLARE @RomanScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 32
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'Knight of Shadows'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Novel'
DECLARE @NovelScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BookId Int -- Int32
SET     @BookId = 33
DECLARE @BookName NVarChar(4000) -- String
SET     @BookName = N'The Chronicles of Amber'
DECLARE @Discriminator NVarChar(4000) -- String
SET     @Discriminator = N'Roman'
DECLARE @RomanScore Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NOT NULL)
	DROP TABLE [BookAuthor]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NULL)
	CREATE TABLE [BookAuthor]
	(
		[FkBookId]   Int NOT NULL,
		[FkAuthorId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 11
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 12
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 13
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 21
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 22
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 23
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 31
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 32
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FkBookId Int -- Int32
SET     @FkBookId = 33
DECLARE @FkAuthorId Int -- Int32
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[m_1].[Id],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[t3].[Id]
		FROM
			(
				SELECT
					CAST(0 AS Int) as [projection__set_id__],
					[a_Book].[BookId] as [Id]
				FROM
					[Author] [t1]
						INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
						LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
				WHERE
					[a_Book].[Discriminator] = N'Roman'
				UNION ALL
				SELECT
					CAST(1 AS Int) as [projection__set_id__],
					NULL as [Id]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = N'Novel'
			) [t3]
		WHERE
			[t3].[projection__set_id__] = 0
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[Id]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]
WHERE
	[a_Author].[AuthorName] <> N'A' OR [a_Author].[AuthorName] IS NULL

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[m_1].[c1],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[t3].[c1]
		FROM
			(
				SELECT
					CAST(0 AS Int) as [projection__set_id__],
					NULL as [c1]
				FROM
					[Author] [t1]
						INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
						LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
				WHERE
					[a_Book].[Discriminator] = N'Roman'
				UNION ALL
				SELECT
					CAST(1 AS Int) as [projection__set_id__],
					[a_Book_1].[BookId] as [c1]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = N'Novel'
			) [t3]
		WHERE
			[t3].[projection__set_id__] = 1
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[c1]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[a_Book].[BookId],
	[a_Book].[BookName],
	CAST(0 AS Int),
	[a_Book].[BookId],
	NULL
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = N'Roman'
UNION ALL
SELECT
	[a_Book_1].[BookId],
	[a_Book_1].[BookName],
	CAST(1 AS Int),
	NULL,
	[a_Book_1].[BookId]
FROM
	[Author] [t2]
		INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
		LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
WHERE
	[a_Book_1].[Discriminator] = N'Novel'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
		INNER JOIN [BookAuthor] [d_1] ON [d_1].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d_1].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Author]', N'U') IS NOT NULL)
	DROP TABLE [Author]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Book]', N'U') IS NOT NULL)
	DROP TABLE [Book]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NOT NULL)
	DROP TABLE [BookAuthor]

