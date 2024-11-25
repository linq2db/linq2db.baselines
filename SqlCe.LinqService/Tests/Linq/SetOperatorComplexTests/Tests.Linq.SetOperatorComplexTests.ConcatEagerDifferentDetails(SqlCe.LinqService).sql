BeforeExecute
-- SqlCe

DROP TABLE [Author]

BeforeExecute
-- SqlCe

CREATE TABLE [Author]
(
	[AuthorId]   Int           NOT NULL,
	[AuthorName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Author] PRIMARY KEY ([AuthorId])
)

BeforeExecute
-- SqlCe
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 1
DECLARE @AuthorName NVarChar(12) -- String
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
-- SqlCe
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 2
DECLARE @AuthorName NVarChar(14) -- String
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
-- SqlCe
DECLARE @AuthorId Int -- Int32
SET     @AuthorId = 3
DECLARE @AuthorName NVarChar(20) -- String
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
-- SqlCe

DROP TABLE [Book]

BeforeExecute
-- SqlCe

CREATE TABLE [Book]
(
	[BookId]        Int           NOT NULL,
	[Discriminator] NVarChar(255)     NULL,
	[BookName]      NVarChar(255)     NULL,
	[RomanScore]    Int               NULL,
	[NovelScore]    Int               NULL,

	CONSTRAINT [PK_Book] PRIMARY KEY ([BookId])
)

BeforeExecute
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 11
DECLARE @BookName NVarChar(14) -- String
SET     @BookName = 'Lisey''s Story['
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Roman'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 12
DECLARE @BookName NVarChar(8) -- String
SET     @BookName = 'Duma Key'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Novel'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 13
DECLARE @BookName NVarChar(17) -- String
SET     @BookName = 'Just After Sunset'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Roman'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 21
DECLARE @BookName NVarChar(10) -- String
SET     @BookName = 'Deathworld'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Roman'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 22
DECLARE @BookName NVarChar(23) -- String
SET     @BookName = 'The Stainless Steel Rat'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Novel'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 23
DECLARE @BookName NVarChar(20) -- String
SET     @BookName = 'Planet of the Damned'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Roman'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 31
DECLARE @BookName NVarChar(14) -- String
SET     @BookName = 'Blood of Amber'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Roman'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 32
DECLARE @BookName NVarChar(17) -- String
SET     @BookName = 'Knight of Shadows'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Novel'
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
-- SqlCe
DECLARE @BookId Int -- Int32
SET     @BookId = 33
DECLARE @BookName NVarChar(23) -- String
SET     @BookName = 'The Chronicles of Amber'
DECLARE @Discriminator NVarChar(5) -- String
SET     @Discriminator = 'Roman'
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
-- SqlCe

DROP TABLE [BookAuthor]

BeforeExecute
-- SqlCe

CREATE TABLE [BookAuthor]
(
	[FkBookId]   Int NOT NULL,
	[FkAuthorId] Int NOT NULL
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe

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
					[a_Book].[Discriminator] = 'Roman'
				UNION ALL
				SELECT
					CAST(1 AS Int) as [projection__set_id__],
					NULL as [Id]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = 'Novel'
			) [t3]
		WHERE
			[t3].[projection__set_id__] = 0
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[Id]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]
WHERE
	[a_Author].[AuthorName] <> 'A' OR [a_Author].[AuthorName] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[m_1].[c1] as [Item1],
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
					[a_Book].[Discriminator] = 'Roman'
				UNION ALL
				SELECT
					CAST(1 AS Int) as [projection__set_id__],
					[a_Book_1].[BookId] as [c1]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = 'Novel'
			) [t3]
		WHERE
			[t3].[projection__set_id__] = 1
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[c1]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- SqlCe

SELECT
	[a_Book].[BookId] as [Id],
	[a_Book].[BookName],
	CAST(0 AS Int) as [projection__set_id__],
	[a_Book].[BookId] as [Id_1],
	NULL as [c1]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = 'Roman'
UNION ALL
SELECT
	[a_Book_1].[BookId] as [Id],
	[a_Book_1].[BookName],
	CAST(1 AS Int) as [projection__set_id__],
	NULL as [Id_1],
	[a_Book_1].[BookId] as [c1]
FROM
	[Author] [t2]
		INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
		LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
WHERE
	[a_Book_1].[Discriminator] = 'Novel'

BeforeExecute
-- SqlCe

SELECT
	[m_1].[BookId],
	[m_1].[AuthorId],
	[a_Author].[AuthorId] as [AuthorId_1],
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
-- SqlCe

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
-- SqlCe

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Author]

BeforeExecute
-- SqlCe

DROP TABLE [Book]

BeforeExecute
-- SqlCe

DROP TABLE [BookAuthor]

