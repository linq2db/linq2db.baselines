-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

INSERT ASYNC BULK TempTable(ID)

-- ClickHouse.Driver ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

