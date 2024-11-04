BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Author

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Author
(
	AuthorId   Int32,
	AuthorName Nullable(String),

	PRIMARY KEY (AuthorId)
)
ENGINE = MergeTree()
ORDER BY AuthorId

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Book

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BookAuthor

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BookAuthor
(
	FkBookId   Int32,
	FkAuthorId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t3.BookId,
	CASE
		WHEN t3.Discriminator = 'Novel' THEN true
		ELSE false
	END,
	t3.BookId_1,
	t3.BookName,
	t3.NovelScore,
	CASE
		WHEN t3.Discriminator = 'Roman' THEN true
		ELSE false
	END,
	t3.RomanScore,
	t3.Discriminator
FROM
	(
		SELECT
			a_Book.BookId as BookId,
			a_Book.BookId as BookId_1,
			a_Book.Discriminator as Discriminator,
			a_Book.BookName as BookName,
			a_Book.RomanScore as RomanScore,
			a_Book.NovelScore as NovelScore
		FROM
			Author t1
				INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
				LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
		WHERE
			a_Book.Discriminator = 'Roman'
		UNION ALL
		SELECT
			a_Book_1.BookId as BookId,
			a_Book_1.BookId as BookId_1,
			a_Book_1.Discriminator as Discriminator,
			a_Book_1.BookName as BookName,
			a_Book_1.RomanScore as RomanScore,
			a_Book_1.NovelScore as NovelScore
		FROM
			Author t2
				INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
				LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
		WHERE
			a_Book_1.Discriminator = 'Novel'
	) t3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.AuthorId,
	a_Book.BookId,
	CASE
		WHEN a_Book.Discriminator = 'Novel' THEN true
		ELSE false
	END,
	a_Book.BookName,
	a_Book.NovelScore,
	CASE
		WHEN a_Book.Discriminator = 'Roman' THEN true
		ELSE false
	END,
	a_Book.RomanScore,
	a_Book.Discriminator
FROM
	Author m_1
		INNER JOIN BookAuthor d ON d.FkAuthorId = m_1.AuthorId
		LEFT JOIN Book a_Book ON d.FkBookId = a_Book.BookId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.AuthorId,
	t1.AuthorName
FROM
	Author t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Author

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Book

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BookAuthor

