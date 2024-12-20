BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Books

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Authors

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Authors
(
	Id   Int32,
	Name String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH BooksCte AS
(
	SELECT
		t1.AuthorId,
		t1.Title
	FROM
		Books t1
)
SELECT
	b.Title
FROM
	BooksCte b
		INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
WHERE
	a_Author.Name = 'Steven'

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Authors

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Books

