﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT DISTINCT
	[a_Book].[BookId],
	[a_Book].[Discriminator],
	[a_Book].[BookName],
	[a_Book].[NovelScore],
	[a_Book].[RomanScore]
FROM
	([Author] [t1]
		INNER JOIN [BookAuthor] [b] ON ([b].[FkAuthorId] = [t1].[AuthorId]))
		INNER JOIN [Book] [a_Book] ON ([b].[FkBookId] = [a_Book].[BookId])
WHERE
	[a_Book].[Discriminator] = 'Roman' AND NOT EXISTS(
		SELECT
			*
		FROM
			([Author] [t2]
				INNER JOIN [BookAuthor] [b_1] ON ([b_1].[FkAuthorId] = [t2].[AuthorId]))
				INNER JOIN [Book] [a_Book_1] ON ([b_1].[FkBookId] = [a_Book_1].[BookId])
		WHERE
			[a_Book_1].[Discriminator] = 'Novel' AND
			[a_Book].[BookId] = [a_Book_1].[BookId] AND
			([a_Book].[Discriminator] = [a_Book_1].[Discriminator] OR [a_Book].[Discriminator] IS NULL AND [a_Book_1].[Discriminator] IS NULL) AND
			([a_Book].[BookName] = [a_Book_1].[BookName] OR [a_Book].[BookName] IS NULL AND [a_Book_1].[BookName] IS NULL) AND
			([a_Book].[RomanScore] = [a_Book_1].[RomanScore] OR [a_Book].[RomanScore] IS NULL AND [a_Book_1].[RomanScore] IS NULL) AND
			([a_Book].[NovelScore] = [a_Book_1].[NovelScore] OR [a_Book].[NovelScore] IS NULL AND [a_Book_1].[NovelScore] IS NULL)
	)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[AuthorId],
	[a_Book].[BookId],
	[a_Book].[Discriminator],
	[a_Book].[BookName],
	[a_Book].[NovelScore],
	[a_Book].[RomanScore]
FROM
	([Author] [m_1]
		INNER JOIN [BookAuthor] [d] ON ([d].[FkAuthorId] = [m_1].[AuthorId]))
		LEFT JOIN [Book] [a_Book] ON ([d].[FkBookId] = [a_Book].[BookId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[AuthorId],
	[t1].[AuthorName]
FROM
	[Author] [t1]

