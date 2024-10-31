BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Author]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Author]', N'U') IS NULL)
	CREATE TABLE [Author]
	(
		[AuthorId]   Int            NOT NULL,
		[AuthorName] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED ([AuthorId])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
VALUES
(1,N'Stephen King'),
(2,N'Harry Harrison'),
(3,N'Roger Joseph Zelazny')

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Book]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Book]
(
	[BookId],
	[Discriminator],
	[BookName],
	[RomanScore],
	[NovelScore]
)
VALUES
(11,N'Roman',N'Lisey''s Story[',4,0),
(12,N'Novel',N'Duma Key',0,0),
(13,N'Roman',N'Just After Sunset',3,0),
(21,N'Roman',N'Deathworld',1,0),
(22,N'Novel',N'The Stainless Steel Rat',0,0),
(23,N'Roman',N'Planet of the Damned',0,0),
(31,N'Roman',N'Blood of Amber',5,0),
(32,N'Novel',N'Knight of Shadows',0,0),
(33,N'Roman',N'The Chronicles of Amber',7,0)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [BookAuthor]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NULL)
	CREATE TABLE [BookAuthor]
	(
		[FkBookId]   Int NOT NULL,
		[FkAuthorId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
VALUES
(11,1),
(12,1),
(13,1),
(21,2),
(22,2),
(23,2),
(31,3),
(32,3),
(33,3)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[BookId],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[a_Book].[BookId]
		FROM
			[Author] [t1]
				INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
				LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
		WHERE
			[a_Book].[Discriminator] = N'Roman' AND NOT EXISTS(
				SELECT
					*
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
				WHERE
					1 = 0
			)
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a_Book].[BookId],
	[a_Book].[BookName]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = N'Roman' AND NOT EXISTS(
		SELECT
			*
		FROM
			[Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
		WHERE
			1 = 0
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[AuthorId],
	[a_Book].[BookId],
	IIF([a_Book].[Discriminator] = N'Novel', 1, 0),
	[a_Book].[BookName],
	[a_Book].[NovelScore],
	IIF([a_Book].[Discriminator] = N'Roman', 1, 0),
	[a_Book].[RomanScore],
	[a_Book].[Discriminator]
FROM
	[Author] [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkAuthorId] = [m_1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [d].[FkBookId] = [a_Book].[BookId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Author]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Book]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [BookAuthor]

