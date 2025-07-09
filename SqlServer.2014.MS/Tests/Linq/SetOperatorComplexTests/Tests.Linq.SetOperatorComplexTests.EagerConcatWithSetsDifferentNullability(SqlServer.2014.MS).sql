BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[BookId],
	[m_1].[AuthorId],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[a_Book_1].[BookId],
			[t3].[AuthorId]
		FROM
			(
				SELECT DISTINCT
					[t2].[AuthorId]
				FROM
					(
						SELECT
							[a].[AuthorId]
						FROM
							[Author] [a]
						UNION ALL
						SELECT
							NULL as [AuthorId]
						FROM
							[Author] [t1]
								INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
								INNER JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
						WHERE
							[a_Book].[Discriminator] = N'Novel'
					) [t2]
				WHERE
					[t2].[AuthorId] IS NOT NULL
			) [t3]
				INNER JOIN [BookAuthor] [d] ON [d].[FkAuthorId] = [t3].[AuthorId]
				LEFT JOIN [Book] [a_Book_1] ON [d].[FkBookId] = [a_Book_1].[BookId]
	) [m_1]
		INNER JOIN [BookAuthor] [d_1] ON [d_1].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d_1].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[AuthorId],
	[a_Book_1].[BookId],
	[a_Book_1].[Discriminator],
	[a_Book_1].[BookName],
	[a_Book_1].[NovelScore],
	[a_Book_1].[RomanScore]
FROM
	(
		SELECT DISTINCT
			[t2].[AuthorId]
		FROM
			(
				SELECT
					[a].[AuthorId]
				FROM
					[Author] [a]
				UNION ALL
				SELECT
					NULL as [AuthorId]
				FROM
					[Author] [t1]
						INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
						INNER JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
				WHERE
					[a_Book].[Discriminator] = N'Novel'
			) [t2]
		WHERE
			[t2].[AuthorId] IS NOT NULL
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkAuthorId] = [m_1].[AuthorId]
		LEFT JOIN [Book] [a_Book_1] ON [d].[FkBookId] = [a_Book_1].[BookId]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[BookId],
	[m_1].[c1],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[d_1].[BookId],
			[t3].[c1]
		FROM
			(
				SELECT DISTINCT
					[t2].[c1]
				FROM
					(
						SELECT
							[a].[AuthorId],
							NULL as [c1]
						FROM
							[Author] [a]
						UNION ALL
						SELECT
							NULL as [AuthorId],
							[t1].[AuthorId] as [c1]
						FROM
							[Author] [t1]
								INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
								INNER JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
						WHERE
							[a_Book].[Discriminator] = N'Novel'
					) [t2]
				WHERE
					[t2].[AuthorId] IS NULL
			) [t3]
				CROSS APPLY (
					SELECT TOP (2)
						[a_Book_1].[BookId]
					FROM
						[BookAuthor] [d]
							LEFT JOIN [Book] [a_Book_1] ON [d].[FkBookId] = [a_Book_1].[BookId]
					WHERE
						[d].[FkAuthorId] = [t3].[c1]
				) [d_1]
	) [m_1]
		INNER JOIN [BookAuthor] [d_2] ON [d_2].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d_2].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[c1],
	[d_1].[BookId],
	[d_1].[cond],
	[d_1].[BookName],
	[d_1].[NovelScore],
	[d_1].[RomanScore]
FROM
	(
		SELECT DISTINCT
			[t2].[c1]
		FROM
			(
				SELECT
					[a].[AuthorId],
					NULL as [c1]
				FROM
					[Author] [a]
				UNION ALL
				SELECT
					NULL as [AuthorId],
					[t1].[AuthorId] as [c1]
				FROM
					[Author] [t1]
						INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
						INNER JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
				WHERE
					[a_Book].[Discriminator] = N'Novel'
			) [t2]
		WHERE
			[t2].[AuthorId] IS NULL
	) [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[a_Book_1].[Discriminator] as [cond],
				[a_Book_1].[BookId],
				[a_Book_1].[BookName],
				[a_Book_1].[NovelScore],
				[a_Book_1].[RomanScore]
			FROM
				[BookAuthor] [d]
					LEFT JOIN [Book] [a_Book_1] ON [d].[FkBookId] = [a_Book_1].[BookId]
			WHERE
				[d].[FkAuthorId] = [m_1].[c1]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[a].[AuthorName],
	[a].[AuthorId],
	NULL
FROM
	[Author] [a]
UNION ALL
SELECT
	NULL,
	NULL,
	[t1].[AuthorId]
FROM
	[Author] [t1]
		INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
		INNER JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
WHERE
	[a_Book].[Discriminator] = N'Novel'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

