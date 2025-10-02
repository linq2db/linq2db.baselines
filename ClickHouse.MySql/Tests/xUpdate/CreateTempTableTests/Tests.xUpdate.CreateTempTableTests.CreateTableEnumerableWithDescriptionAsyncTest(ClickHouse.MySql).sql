BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS TempTable
(
	Name String,

	PRIMARY KEY (Name)
)
ENGINE = MergeTree()
ORDER BY Name

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO TempTable
(
	Name
)
VALUES
('John')

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

