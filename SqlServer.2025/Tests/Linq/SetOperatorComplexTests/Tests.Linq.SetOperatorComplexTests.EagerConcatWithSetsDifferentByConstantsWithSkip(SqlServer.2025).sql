BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 6

SELECT
	[m_1].[c1],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[t2].[c1]
		FROM
			(
				SELECT
					[t1].[BookType] as [cond],
					[t1].[c1]
				FROM
					(
						SELECT
							CAST(N'Roman' AS NVarChar(4000)) as [BookType],
							NULL as [c1]
						FROM
							[Book] [b]
						WHERE
							[b].[Discriminator] = N'Roman'
						UNION ALL
						SELECT
							CAST(N'Novel' AS NVarChar(4000)) as [BookType],
							[b_1].[BookId] as [c1]
						FROM
							[Book] [b_1]
						WHERE
							[b_1].[Discriminator] = N'Novel'
					) [t1]
				ORDER BY
					[t1].[BookType] DESC
				OFFSET @skip ROWS
			) [t2]
		WHERE
			[t2].[cond] = N'Novel'
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[c1]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 6

SELECT
	[t1].[BookType],
	IIF([t1].[BookType] = N'Roman', 1, 0),
	[t1].[c1]
FROM
	(
		SELECT
			CAST(N'Roman' AS NVarChar(4000)) as [BookType],
			NULL as [c1]
		FROM
			[Book] [b]
		WHERE
			[b].[Discriminator] = N'Roman'
		UNION ALL
		SELECT
			CAST(N'Novel' AS NVarChar(4000)) as [BookType],
			[b_1].[BookId] as [c1]
		FROM
			[Book] [b_1]
		WHERE
			[b_1].[Discriminator] = N'Novel'
	) [t1]
ORDER BY
	[t1].[BookType] DESC
OFFSET @skip ROWS

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[BookId],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	[Book] [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Discriminator],
	[t1].[BookId],
	[t1].[BookName],
	[t1].[NovelScore],
	[t1].[RomanScore]
FROM
	[Book] [t1]

