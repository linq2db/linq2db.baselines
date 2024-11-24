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
	[a_Book].[Discriminator],
	[a_Book].[BookName]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = 'Roman' AND EXISTS(
		SELECT
			*
		FROM
			[Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
				LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
		WHERE
			[a_Book_1].[Discriminator] = 'Novel' AND
			([a_Book].[Discriminator] = [a_Book_1].[Discriminator] OR [a_Book].[Discriminator] IS NULL AND [a_Book_1].[Discriminator] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL)
	)

BeforeExecute
BeginTransaction(RepeatableRead)
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
		INNER JOIN [BookAuthor] [d_1] ON [d_1].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d_1].[FkAuthorId] = [a_Author].[AuthorId]

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

