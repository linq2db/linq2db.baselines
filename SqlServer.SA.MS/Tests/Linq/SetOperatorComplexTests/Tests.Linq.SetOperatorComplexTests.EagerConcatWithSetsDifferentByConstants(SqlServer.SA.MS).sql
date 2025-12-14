-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[BookId],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[t3].[BookId]
		FROM
			(
				SELECT
					CAST(N'Roman' AS NVarChar(4000)) as [cond],
					[a_Book].[BookId]
				FROM
					[Author] [t1]
						INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
						LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
				WHERE
					[a_Book].[Discriminator] = N'Roman'
				UNION ALL
				SELECT
					CAST(N'Novel' AS NVarChar(4000)) as [cond],
					NULL as [BookId]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = N'Novel'
			) [t3]
		WHERE
			[t3].[cond] = N'Roman'
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[c1],
	[d_1].[AuthorId],
	[d_1].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[t3].[c1]
		FROM
			(
				SELECT
					CAST(N'Roman' AS NVarChar(4000)) as [cond],
					NULL as [c1]
				FROM
					[Author] [t1]
						INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
						LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
				WHERE
					[a_Book].[Discriminator] = N'Roman'
				UNION ALL
				SELECT
					CAST(N'Novel' AS NVarChar(4000)) as [cond],
					[a_Book_1].[BookId] as [c1]
				FROM
					[Author] [t2]
						INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
						LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
				WHERE
					[a_Book_1].[Discriminator] = N'Novel'
			) [t3]
		WHERE
			[t3].[cond] = N'Novel'
	) [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[a_Author].[AuthorId],
				[a_Author].[AuthorName]
			FROM
				[BookAuthor] [d]
					LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]
			WHERE
				[d].[FkBookId] = [m_1].[c1]
		) [d_1]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t3].[BookType],
	IIF([t3].[BookType] = N'Roman', 1, 0),
	[t3].[BookId],
	[t3].[c1]
FROM
	(
		SELECT
			CAST(N'Roman' AS NVarChar(4000)) as [BookType],
			[a_Book].[BookId],
			NULL as [c1]
		FROM
			[Author] [t1]
				INNER JOIN [BookAuthor] [b] ON [b].[FkAuthorId] = [t1].[AuthorId]
				LEFT JOIN [Book] [a_Book] ON [b].[FkBookId] = [a_Book].[BookId]
		WHERE
			[a_Book].[Discriminator] = N'Roman'
		UNION ALL
		SELECT
			CAST(N'Novel' AS NVarChar(4000)) as [BookType],
			NULL as [BookId],
			[a_Book_1].[BookId] as [c1]
		FROM
			[Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON [b_1].[FkAuthorId] = [t2].[AuthorId]
				LEFT JOIN [Book] [a_Book_1] ON [b_1].[FkBookId] = [a_Book_1].[BookId]
		WHERE
			[a_Book_1].[Discriminator] = N'Novel'
	) [t3]

-- SqlServer.SA.MS SqlServer.2019

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

-- SqlServer.SA.MS SqlServer.2019

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

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

