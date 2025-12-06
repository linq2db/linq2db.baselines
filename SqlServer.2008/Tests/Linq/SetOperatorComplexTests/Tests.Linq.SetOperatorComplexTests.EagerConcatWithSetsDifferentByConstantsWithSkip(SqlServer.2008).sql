-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 6

SELECT
	[m_1].[cond],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	(
		SELECT DISTINCT
			[t3].[cond_1] as [cond]
		FROM
			(
				SELECT
					[t2].[cond],
					[t2].[cond_1]
				FROM
					(
						SELECT
							[t1].[BookType] as [cond],
							[t1].[cond] as [cond_1],
							ROW_NUMBER() OVER (ORDER BY [t1].[BookType] DESC) as [RN]
						FROM
							(
								SELECT
									CAST(N'Roman' AS NVarChar(4000)) as [BookType],
									NULL as [cond]
								FROM
									[Book] [b]
								WHERE
									[b].[Discriminator] = N'Roman'
								UNION ALL
								SELECT
									CAST(N'Novel' AS NVarChar(4000)) as [BookType],
									[b_1].[BookId] as [cond]
								FROM
									[Book] [b_1]
								WHERE
									[b_1].[Discriminator] = N'Novel'
							) [t1]
					) [t2]
				WHERE
					[t2].[RN] > @skip
			) [t3]
		WHERE
			[t3].[cond] = N'Novel'
	) [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[cond]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 6

SELECT
	[t2].[BookType],
	[t2].[cond],
	[t2].[cond_1]
FROM
	(
		SELECT
			[t1].[BookType],
			CASE
				WHEN [t1].[BookType] = N'Roman' THEN 1
				ELSE 0
			END as [cond],
			[t1].[cond] as [cond_1],
			ROW_NUMBER() OVER (ORDER BY [t1].[BookType] DESC) as [RN]
		FROM
			(
				SELECT
					CAST(N'Roman' AS NVarChar(4000)) as [BookType],
					NULL as [cond]
				FROM
					[Book] [b]
				WHERE
					[b].[Discriminator] = N'Roman'
				UNION ALL
				SELECT
					CAST(N'Novel' AS NVarChar(4000)) as [BookType],
					[b_1].[BookId] as [cond]
				FROM
					[Book] [b_1]
				WHERE
					[b_1].[Discriminator] = N'Novel'
			) [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip
ORDER BY
	[t2].[BookType] DESC

-- SqlServer.2008

SELECT
	[m_1].[BookId],
	[a_Author].[AuthorId],
	[a_Author].[AuthorName]
FROM
	[Book] [m_1]
		INNER JOIN [BookAuthor] [d] ON [d].[FkBookId] = [m_1].[BookId]
		LEFT JOIN [Author] [a_Author] ON [d].[FkAuthorId] = [a_Author].[AuthorId]

-- SqlServer.2008

SELECT
	[t1].[Discriminator],
	[t1].[BookId],
	[t1].[BookName],
	[t1].[NovelScore],
	[t1].[RomanScore]
FROM
	[Book] [t1]

