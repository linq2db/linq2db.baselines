﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Author

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Author
(
	AuthorId   Int32,
	AuthorName Nullable(String),

	PRIMARY KEY (AuthorId)
)
ENGINE = MergeTree()
ORDER BY AuthorId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Author
(
	AuthorId,
	AuthorName
)
VALUES
(1,'Stephen King'),
(2,'Harry Harrison'),
(3,'Roger Joseph Zelazny')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Book

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Book
(
	BookId        Int32,
	Discriminator Nullable(String),
	BookName      Nullable(String),
	RomanScore    Nullable(Int32),
	NovelScore    Nullable(Int32),

	PRIMARY KEY (BookId)
)
ENGINE = MergeTree()
ORDER BY BookId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	Discriminator,
	BookName,
	RomanScore,
	NovelScore
)
VALUES
(11,'Roman','Lisey\'s Story[',4,0),
(12,'Novel','Duma Key',0,0),
(13,'Roman','Just After Sunset',3,0),
(21,'Roman','Deathworld',1,0),
(22,'Novel','The Stainless Steel Rat',0,0),
(23,'Roman','Planet of the Damned',0,0),
(31,'Roman','Blood of Amber',5,0),
(32,'Novel','Knight of Shadows',0,0),
(33,'Roman','The Chronicles of Amber',7,0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BookAuthor

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS BookAuthor
(
	FkBookId   Int32,
	FkAuthorId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
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
-- ClickHouse.MySql ClickHouse

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
				EXCEPT ALL
				SELECT
					a_Book_1.BookId as Id,
					a_Book_1.BookName as BookName,
					toInt32(NULL) as Id_1
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
-- ClickHouse.MySql ClickHouse

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
EXCEPT ALL
SELECT
	a_Book_1.BookId as Id,
	a_Book_1.BookName as BookName,
	toInt32(NULL) as Id_1
FROM
	Author t2
		INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
		LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
WHERE
	a_Book_1.Discriminator = 'Novel'

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.AuthorId,
	t1.AuthorName
FROM
	Author t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Author

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Book

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BookAuthor

