BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_Book.BookId,
	a_Book.BookName
FROM
	Author t1
		INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
		INNER JOIN Book a_Book ON b.FkBookId = a_Book.BookId
WHERE
	a_Book.Discriminator = 'Roman'
INTERSECT
SELECT
	a_Book_1.BookId,
	a_Book_1.BookName
FROM
	Author t2
		INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
		INNER JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
WHERE
	a_Book_1.Discriminator = 'Novel'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.AuthorId,
	a_Book.BookId,
	a_Book.Discriminator,
	a_Book.BookName,
	a_Book.NovelScore,
	a_Book.RomanScore
FROM
	Author m_1
		INNER JOIN BookAuthor d ON d.FkAuthorId = m_1.AuthorId
		LEFT JOIN Book a_Book ON d.FkBookId = a_Book.BookId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.AuthorId,
	t1.AuthorName
FROM
	Author t1

