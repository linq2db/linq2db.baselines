BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	TempTable t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

