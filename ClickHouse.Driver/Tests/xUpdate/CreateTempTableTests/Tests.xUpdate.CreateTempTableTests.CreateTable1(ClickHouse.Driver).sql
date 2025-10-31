-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	TempTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

