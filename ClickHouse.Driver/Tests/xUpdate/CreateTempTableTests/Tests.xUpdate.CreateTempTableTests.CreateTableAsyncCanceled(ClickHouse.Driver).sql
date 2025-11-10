-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse

DROP TABLE TempTable

