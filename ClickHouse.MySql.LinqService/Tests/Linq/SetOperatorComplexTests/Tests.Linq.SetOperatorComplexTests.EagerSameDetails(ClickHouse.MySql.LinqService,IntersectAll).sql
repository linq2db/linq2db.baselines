﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	a_Author.AuthorId,
	a_Author.AuthorName
FROM
	(
		SELECT DISTINCT
			t3.Id_1 as Id
		FROM
			(
				SELECT
					a_Book.BookId as Id,
					a_Book.BookName as BookName,
					a_Book.BookId as Id_1
				FROM
					Author t1
						INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
						LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
				WHERE
					a_Book.Discriminator = 'Roman'
				INTERSECT ALL
				SELECT
					a_Book_1.BookId as Id,
					a_Book_1.BookName as BookName,
					a_Book_1.BookId as Id_1
				FROM
					Author t2
						INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
						LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
				WHERE
					a_Book_1.Discriminator = 'Novel'
			) t3
	) m_1
		INNER JOIN BookAuthor d ON d.FkBookId = m_1.Id
		LEFT JOIN Author a_Author ON d.FkAuthorId = a_Author.AuthorId

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	a_Book.BookId as Id,
	a_Book.BookName,
	a_Book.BookId as Id_1
FROM
	Author t1
		INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
		LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
WHERE
	a_Book.Discriminator = 'Roman'
INTERSECT ALL
SELECT
	a_Book_1.BookId as Id,
	a_Book_1.BookName as BookName,
	a_Book_1.BookId as Id_1
FROM
	Author t2
		INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
		LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
WHERE
	a_Book_1.Discriminator = 'Novel'

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	m_1.BookId,
	m_1.AuthorId,
	a_Author.AuthorId,
	a_Author.AuthorName
FROM
	(
		SELECT DISTINCT
			a_Book.BookId as BookId,
			t2.AuthorId as AuthorId
		FROM
			(
				SELECT DISTINCT
					t1.AuthorId as AuthorId
				FROM
					Author t1
			) t2
				INNER JOIN BookAuthor d ON d.FkAuthorId = t2.AuthorId
				LEFT JOIN Book a_Book ON d.FkBookId = a_Book.BookId
	) m_1
		INNER JOIN BookAuthor d_1 ON d_1.FkBookId = m_1.BookId
		LEFT JOIN Author a_Author ON d_1.FkAuthorId = a_Author.AuthorId

BeforeExecute
--  ClickHouse.MySql ClickHouse

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
--  ClickHouse.MySql ClickHouse

SELECT
	t1.AuthorId,
	t1.AuthorName
FROM
	Author t1

