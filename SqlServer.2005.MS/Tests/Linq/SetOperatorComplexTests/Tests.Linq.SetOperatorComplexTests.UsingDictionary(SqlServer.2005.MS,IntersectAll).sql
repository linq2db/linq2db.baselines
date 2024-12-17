BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Author]', N'U') IS NOT NULL)
	DROP TABLE [Author]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Author]', N'U') IS NULL)
	CREATE TABLE [Author]
	(
		[AuthorId]   Int            NOT NULL,
		[AuthorName] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED ([AuthorId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
SELECT 1,N'Stephen King' UNION ALL
SELECT 2,N'Harry Harrison' UNION ALL
SELECT 3,N'Roger Joseph Zelazny'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Book]', N'U') IS NOT NULL)
	DROP TABLE [Book]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Book]
(
	[BookId],
	[Discriminator],
	[BookName],
	[RomanScore],
	[NovelScore]
)
SELECT 11,N'Roman',N'Lisey''s Story[',4,0 UNION ALL
SELECT 12,N'Novel',N'Duma Key',0,0 UNION ALL
SELECT 13,N'Roman',N'Just After Sunset',3,0 UNION ALL
SELECT 21,N'Roman',N'Deathworld',1,0 UNION ALL
SELECT 22,N'Novel',N'The Stainless Steel Rat',0,0 UNION ALL
SELECT 23,N'Roman',N'Planet of the Damned',0,0 UNION ALL
SELECT 31,N'Roman',N'Blood of Amber',5,0 UNION ALL
SELECT 32,N'Novel',N'Knight of Shadows',0,0 UNION ALL
SELECT 33,N'Roman',N'The Chronicles of Amber',7,0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NOT NULL)
	DROP TABLE [BookAuthor]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NULL)
	CREATE TABLE [BookAuthor]
	(
		[FkBookId]   Int NOT NULL,
		[FkAuthorId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [BookAuthor]
(
	[FkBookId],
	[FkAuthorId]
)
SELECT 11,1 UNION ALL
SELECT 12,1 UNION ALL
SELECT 13,1 UNION ALL
SELECT 21,2 UNION ALL
SELECT 22,2 UNION ALL
SELECT 23,2 UNION ALL
SELECT 31,3 UNION ALL
SELECT 32,3 UNION ALL
SELECT 33,3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[a_Book].[Discriminator],
	[a_Book].[BookName]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = N'Roman' AND EXISTS(
		SELECT
			*
		FROM
			[Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
				LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
		WHERE
			[a_Book_1].[Discriminator] = N'Novel' AND
			([a_Book].[Discriminator] = [a_Book_1].[Discriminator] OR [a_Book].[Discriminator] IS NULL AND [a_Book_1].[Discriminator] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL)
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

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
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Author]', N'U') IS NOT NULL)
	DROP TABLE [Author]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Book]', N'U') IS NOT NULL)
	DROP TABLE [Book]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BookAuthor]', N'U') IS NOT NULL)
	DROP TABLE [BookAuthor]

