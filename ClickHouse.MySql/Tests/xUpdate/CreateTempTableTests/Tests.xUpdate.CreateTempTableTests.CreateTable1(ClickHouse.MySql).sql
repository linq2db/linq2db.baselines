BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	TempTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

