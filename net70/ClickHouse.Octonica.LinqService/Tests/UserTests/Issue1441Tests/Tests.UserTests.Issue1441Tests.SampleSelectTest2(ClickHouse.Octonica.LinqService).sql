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

DROP TABLE IF EXISTS Books

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Books
(
	Id       Int32,
	AuthorId Int32,
	Title    String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	author.Id,
	author.Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Books

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Authors

