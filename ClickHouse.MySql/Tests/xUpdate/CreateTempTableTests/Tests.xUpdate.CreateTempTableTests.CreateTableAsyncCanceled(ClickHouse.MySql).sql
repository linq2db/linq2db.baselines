-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

DROP TABLE TempTable

