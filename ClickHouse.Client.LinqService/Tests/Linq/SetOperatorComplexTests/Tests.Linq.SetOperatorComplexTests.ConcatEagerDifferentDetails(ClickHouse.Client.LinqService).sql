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
	m_1.Id,
	a_Author.AuthorId,
	a_Author.AuthorName
FROM
	(
		SELECT DISTINCT
			t3.Id as Id
		FROM
			(
				SELECT
					toInt32(0) as projection__set_id__,
					a_Book.BookId as Id
				FROM
					Author t1
						INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
						LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
				WHERE
					a_Book.Discriminator = 'Roman' AND a_Book.Discriminator IS NOT NULL
				UNION ALL
				SELECT
					toInt32(1) as projection__set_id__,
					toInt32(NULL) as Id
				FROM
					Author t2
						INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
						LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
				WHERE
					a_Book_1.Discriminator = 'Novel' AND a_Book_1.Discriminator IS NOT NULL
			) t3
		WHERE
			t3.projection__set_id__ = 0
	) m_1
		INNER JOIN BookAuthor d ON d.FkBookId = m_1.Id AND m_1.Id IS NOT NULL
		LEFT JOIN Author a_Author ON d.FkAuthorId = a_Author.AuthorId
WHERE
	a_Author.AuthorName <> 'A' OR a_Author.AuthorName IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.c1,
	a_Author.AuthorId,
	a_Author.AuthorName
FROM
	(
		SELECT DISTINCT
			t3.c1 as c1
		FROM
			(
				SELECT
					toInt32(0) as projection__set_id__,
					toInt32(NULL) as c1
				FROM
					Author t1
						INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
						LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
				WHERE
					a_Book.Discriminator = 'Roman' AND a_Book.Discriminator IS NOT NULL
				UNION ALL
				SELECT
					toInt32(1) as projection__set_id__,
					a_Book_1.BookId as c1
				FROM
					Author t2
						INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
						LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
				WHERE
					a_Book_1.Discriminator = 'Novel' AND a_Book_1.Discriminator IS NOT NULL
			) t3
		WHERE
			t3.projection__set_id__ = 1
	) m_1
		INNER JOIN BookAuthor d ON d.FkBookId = m_1.c1 AND m_1.c1 IS NOT NULL
		LEFT JOIN Author a_Author ON d.FkAuthorId = a_Author.AuthorId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Book.BookId as Id,
	a_Book.BookName,
	toInt32(0) as projection__set_id__,
	a_Book.BookId as Id_1,
	toInt32(NULL) as c1
FROM
	Author t1
		INNER JOIN BookAuthor b ON b.FkAuthorId = t1.AuthorId
		LEFT JOIN Book a_Book ON b.FkBookId = a_Book.BookId
WHERE
	a_Book.Discriminator = 'Roman' AND a_Book.Discriminator IS NOT NULL
UNION ALL
SELECT
	a_Book_1.BookId as Id,
	a_Book_1.BookName as BookName,
	toInt32(1) as projection__set_id__,
	toInt32(NULL) as Id_1,
	a_Book_1.BookId as c1
FROM
	Author t2
		INNER JOIN BookAuthor b_1 ON b_1.FkAuthorId = t2.AuthorId
		LEFT JOIN Book a_Book_1 ON b_1.FkBookId = a_Book_1.BookId
WHERE
	a_Book_1.Discriminator = 'Novel' AND a_Book_1.Discriminator IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

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
		INNER JOIN BookAuthor d_1 ON d_1.FkBookId = m_1.BookId AND m_1.BookId IS NOT NULL
		LEFT JOIN Author a_Author ON d_1.FkAuthorId = a_Author.AuthorId

BeforeExecute
-- ClickHouse.Client ClickHouse

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

