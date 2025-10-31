-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TempTable
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

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

DROP TABLE TempTable

