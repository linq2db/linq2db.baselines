BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Books

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Authors

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Authors
(
	Id   Int32,
	Name String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
	b_1.Name = 'Steven' AND b_1.Name IS NOT NULL OR b_1.Title = 'Something' AND b_1.Title IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Authors

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Books

