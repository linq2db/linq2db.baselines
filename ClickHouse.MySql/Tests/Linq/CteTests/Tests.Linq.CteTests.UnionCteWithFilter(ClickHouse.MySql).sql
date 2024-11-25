BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Books

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Books
(
	Id       Int32,
	Title    String,
	AuthorId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Books
(
	Id,
	Title,
	AuthorId
)
VALUES
(1,'Something',1),
(2,'Book',2),
(3,'Boring',3)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Authors

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Authors
(
	Id   Int32,
	Name String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Authors
(
	Id,
	Name
)
VALUES
(1,'John'),
(2,'Steven'),
(3,'Smith')

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH BooksCte AS
(
	SELECT
		b.Id as Book_Id,
		b.Title as Book_Title,
		a_Author.Name as Author_Name
	FROM
		Books b
			INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
)
SELECT
	b_1.Id
FROM
	(
		SELECT
			toString(NULL) as Name,
			r.Book_Title as Title,
			r.Book_Id as Id
		FROM
			BooksCte r
		UNION ALL
		SELECT
			t1.Author_Name as Name,
			toString(NULL) as Title,
			toInt32(NULL) as Id
		FROM
			BooksCte t1
	) b_1
WHERE
	b_1.Name = 'Steven' OR b_1.Title = 'Something'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Authors

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Books

