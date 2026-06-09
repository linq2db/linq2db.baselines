-- YDB Ydb

SELECT
	Unwrap(CAST('Discriminator'u AS Text)) as c1,
	a_Book.Discriminator as Discriminator,
	a_Book.BookName as BookName,
	a_Book.BookName as BookName_1
FROM
	Author t1
		INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
		LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
WHERE
	a_Book.Discriminator = 'Roman'u
UNION
SELECT
	Unwrap(CAST('Discriminator'u AS Text)) as c1,
	a_Book_1.Discriminator as Discriminator,
	a_Book_1.BookName as BookName,
	a_Book_1.BookName as BookName_1
FROM
	Author t2
		INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
		LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
WHERE
	a_Book_1.Discriminator = 'Novel'u

-- YDB Ydb

SELECT
	m_1.BookId as BookId,
	m_1.AuthorId as AuthorId,
	a_Author.AuthorId as AuthorId_1,
	a_Author.AuthorName as AuthorName
FROM
	(
		SELECT DISTINCT
			a_Book.BookId as BookId,
			t1.AuthorId as AuthorId
		FROM
			Author t1
				INNER JOIN BookAuthor d ON d.FkAuthorId = t1.AuthorId
				LEFT JOIN Book a_Book ON d.FkBookId = a_Book.BookId
	) m_1
		INNER JOIN BookAuthor d_1 ON d_1.FkBookId = m_1.BookId
		LEFT JOIN Author a_Author ON d_1.FkAuthorId = a_Author.AuthorId
WHERE
	m_1.BookId IS NOT NULL

-- YDB Ydb

SELECT
	m_1.AuthorId as AuthorId,
	a_Book.BookId as BookId,
	a_Book.Discriminator as Discriminator,
	a_Book.BookName as BookName,
	a_Book.NovelScore as NovelScore,
	a_Book.RomanScore as RomanScore
FROM
	Author m_1
		INNER JOIN BookAuthor d ON d.FkAuthorId = m_1.AuthorId
		LEFT JOIN Book a_Book ON d.FkBookId = a_Book.BookId

-- YDB Ydb

SELECT
	t1.AuthorId as AuthorId,
	t1.AuthorName as AuthorName
FROM
	Author t1

