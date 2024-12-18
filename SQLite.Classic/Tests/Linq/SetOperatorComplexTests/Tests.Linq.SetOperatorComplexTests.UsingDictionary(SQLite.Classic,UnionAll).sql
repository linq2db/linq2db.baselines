BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Author]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Author]
(
	[AuthorId]   INTEGER       NOT NULL,
	[AuthorName] NVarChar(255)     NULL,

	CONSTRAINT [PK_Author] PRIMARY KEY ([AuthorId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Author]
(
	[AuthorId],
	[AuthorName]
)
VALUES
(1,'Stephen King'),
(2,'Harry Harrison'),
(3,'Roger Joseph Zelazny')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Book]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Book]
(
	[BookId]        INTEGER       NOT NULL,
	[Discriminator] NVarChar(255)     NULL,
	[BookName]      NVarChar(255)     NULL,
	[RomanScore]    INTEGER           NULL,
	[NovelScore]    INTEGER           NULL,

	CONSTRAINT [PK_Book] PRIMARY KEY ([BookId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Book]
(
	[BookId],
	[Discriminator],
	[BookName],
	[RomanScore],
	[NovelScore]
)
VALUES
(11,'Roman','Lisey''s Story[',4,0),
(12,'Novel','Duma Key',0,0),
(13,'Roman','Just After Sunset',3,0),
(21,'Roman','Deathworld',1,0),
(22,'Novel','The Stainless Steel Rat',0,0),
(23,'Roman','Planet of the Damned',0,0),
(31,'Roman','Blood of Amber',5,0),
(32,'Novel','Knight of Shadows',0,0),
(33,'Roman','The Chronicles of Amber',7,0)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BookAuthor]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BookAuthor]
(
	[FkBookId]   INTEGER NOT NULL,
	[FkAuthorId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	CAST('Discriminator' AS NVarChar(255)),
	[a_Book].[Discriminator],
	[a_Book].[BookName],
	[a_Book].[BookName]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = 'Roman' AND [a_Book].[Discriminator] IS NOT NULL
UNION ALL
SELECT
	CAST('Discriminator' AS NVarChar(255)),
	[a_Book_1].[Discriminator],
	[a_Book_1].[BookName],
	[a_Book_1].[BookName]
FROM
	[Author] [t2]
		INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
		LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
WHERE
	[a_Book_1].[Discriminator] = 'Novel' AND [a_Book_1].[Discriminator] IS NOT NULL

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Author]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Book]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [BookAuthor]

