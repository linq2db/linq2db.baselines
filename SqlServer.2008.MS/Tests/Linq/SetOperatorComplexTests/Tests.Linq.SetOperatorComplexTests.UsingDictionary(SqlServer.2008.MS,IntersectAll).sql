﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
			[a_Book_1].[Discriminator] = N'Novel' AND ([a_Book].[Discriminator] = [a_Book_1].[Discriminator] OR [a_Book].[Discriminator] IS NULL AND [a_Book_1].[Discriminator] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL)
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

