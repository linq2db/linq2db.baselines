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

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
SELECT 1,'Stephen King' UNION ALL
SELECT 2,'Harry Harrison' UNION ALL
SELECT 3,'Roger Joseph Zelazny'

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
BeginTransaction(RepeatableRead)
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
					[a_Book].[Discriminator] = 'Roman' AND [a_Book].[Discriminator] IS NOT NULL
				UNION ALL
				SELECT
					CAST(1 AS Int) as [projection__set_id__],
					NULL as [Id]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = 'Novel' AND [a_Book_1].[Discriminator] IS NOT NULL
			) [t3]
		WHERE
			[t3].[projection__set_id__] = 0
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[Id] AND [m_1].[Id] IS NOT NULL
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

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
					[a_Book].[Discriminator] = 'Roman' AND [a_Book].[Discriminator] IS NOT NULL
				UNION ALL
				SELECT
					CAST(1 AS Int) as [projection__set_id__],
					[a_Book_1].[BookId] as [c1]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = 'Novel' AND [a_Book_1].[Discriminator] IS NOT NULL
			) [t3]
		WHERE
			[t3].[projection__set_id__] = 1
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[c1] AND [m_1].[c1] IS NOT NULL
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]
WHERE
	[a_Author].[AuthorName] <> 'A' OR [a_Author].[AuthorName] IS NULL

BeforeExecute
DisposeTransaction
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
	[a_Book].[Discriminator] = 'Roman' AND [a_Book].[Discriminator] IS NOT NULL
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
	[a_Book_1].[Discriminator] = 'Novel' AND [a_Book_1].[Discriminator] IS NOT NULL

BeforeExecute
BeginTransaction(RepeatableRead)
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
		INNER JOIN [BookAuthor] [d_1] ON [d_1].[FkBookId] = [m_1].[BookId] AND [m_1].[BookId] IS NOT NULL
		LEFT JOIN [Author] [a_Author] ON [d_1].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[AuthorId],
	[a_Book].[BookId],
	[a_Book].[Discriminator] as [cond],
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

