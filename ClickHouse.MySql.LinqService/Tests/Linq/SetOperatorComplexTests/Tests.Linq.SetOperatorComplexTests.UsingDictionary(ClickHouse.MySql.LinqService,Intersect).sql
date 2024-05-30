BeforeExecute
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
(
	1,
	'Stephen King'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Author
(
	AuthorId,
	AuthorName
)
VALUES
(
	2,
	'Harry Harrison'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Author
(
	AuthorId,
	AuthorName
)
VALUES
(
	3,
	'Roger Joseph Zelazny'
)

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
	BookName,
	Discriminator,
	RomanScore
)
VALUES
(
	11,
	'Lisey\'s Story[',
	'Roman',
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	NovelScore
)
VALUES
(
	12,
	'Duma Key',
	'Novel',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	RomanScore
)
VALUES
(
	13,
	'Just After Sunset',
	'Roman',
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	RomanScore
)
VALUES
(
	21,
	'Deathworld',
	'Roman',
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	NovelScore
)
VALUES
(
	22,
	'The Stainless Steel Rat',
	'Novel',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	RomanScore
)
VALUES
(
	23,
	'Planet of the Damned',
	'Roman',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	RomanScore
)
VALUES
(
	31,
	'Blood of Amber',
	'Roman',
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	NovelScore
)
VALUES
(
	32,
	'Knight of Shadows',
	'Novel',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Book
(
	BookId,
	BookName,
	Discriminator,
	RomanScore
)
VALUES
(
	33,
	'The Chronicles of Amber',
	'Roman',
	7
)

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
(
	11,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	12,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	13,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	21,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	22,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	23,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	31,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	32,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BookAuthor
(
	FkBookId,
	FkAuthorId
)
VALUES
(
	33,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	a_Book.Discriminator,
	a_Book.BookName,
	a_Book.BookName as BookName_1
FROM
	Author t1
		INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
		LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
WHERE
	a_Book.Discriminator = 'Roman'
INTERSECT DISTINCT
SELECT
	a_Book_1.Discriminator as Discriminator,
	a_Book_1.BookName as BookName,
	a_Book_1.BookName as BookName_1
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

