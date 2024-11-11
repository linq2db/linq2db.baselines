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

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
SELECT 1,'Stephen King' UNION ALL
SELECT 2,'Harry Harrison' UNION ALL
SELECT 3,'Roger Joseph Zelazny'

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

INSERT INTO [Book]
(
	[BookId],
	[Discriminator],
	[BookName],
	[RomanScore],
	[NovelScore]
)
SELECT 11,'Roman','Lisey''s Story[',4,0 UNION ALL
SELECT 12,'Novel','Duma Key',0,0 UNION ALL
SELECT 13,'Roman','Just After Sunset',3,0 UNION ALL
SELECT 21,'Roman','Deathworld',1,0 UNION ALL
SELECT 22,'Novel','The Stainless Steel Rat',0,0 UNION ALL
SELECT 23,'Roman','Planet of the Damned',0,0 UNION ALL
SELECT 31,'Roman','Blood of Amber',5,0 UNION ALL
SELECT 32,'Novel','Knight of Shadows',0,0 UNION ALL
SELECT 33,'Roman','The Chronicles of Amber',7,0

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
-- Sybase.Managed Sybase

SELECT DISTINCT
	[t1].[BookId],
	CASE
		WHEN [t1].[Discriminator] = 'Novel' THEN 1
		ELSE 0
	END,
	[t1].[BookName],
	[t1].[NovelScore],
	CASE
		WHEN [t1].[Discriminator] = 'Roman' THEN 1
		ELSE 0
	END,
	[t1].[RomanScore],
	[t1].[Discriminator]
FROM
	(
		SELECT
			[a_Book].[BookId],
			[a_Book].[Discriminator],
			[a_Book].[BookName],
			[a_Book].[RomanScore],
			[a_Book].[NovelScore]
		FROM
			[Author] [a]
				INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [a].[AuthorId]
				LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
		WHERE
			[a_Book].[Discriminator] = 'Roman'
	) [t1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
				LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
		WHERE
			[a_Book_1].[Discriminator] = 'Novel' AND
			([t1].[BookId] = [a_Book_1].[BookId] OR [t1].[BookId] IS NULL AND [a_Book_1].[BookId] IS NULL) AND
			([t1].[BookId] = [a_Book_1].[BookId] OR [t1].[BookId] IS NULL AND [a_Book_1].[BookId] IS NULL) AND
			([t1].[Discriminator] = [a_Book_1].[Discriminator] OR [t1].[Discriminator] IS NULL AND [a_Book_1].[Discriminator] IS NULL) AND
			([t1].[BookName] = [a_Book_1].[BookName] OR [t1].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL) AND
			([t1].[RomanScore] = [a_Book_1].[RomanScore] OR [t1].[RomanScore] IS NULL AND [a_Book_1].[RomanScore] IS NULL) AND
			([t1].[NovelScore] = [a_Book_1].[NovelScore] OR [t1].[NovelScore] IS NULL AND [a_Book_1].[NovelScore] IS NULL)
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[AuthorId],
	[a_Book].[BookId],
	CASE
		WHEN [a_Book].[Discriminator] = 'Novel' THEN 1
		ELSE 0
	END,
	[a_Book].[BookName],
	[a_Book].[NovelScore],
	CASE
		WHEN [a_Book].[Discriminator] = 'Roman' THEN 1
		ELSE 0
	END,
	[a_Book].[RomanScore],
	[a_Book].[Discriminator]
FROM
	[Author] [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkAuthorId] = [m_1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [d].[FkBookId] = [a_Book].[BookId]

BeforeExecute
DisposeTransaction
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

