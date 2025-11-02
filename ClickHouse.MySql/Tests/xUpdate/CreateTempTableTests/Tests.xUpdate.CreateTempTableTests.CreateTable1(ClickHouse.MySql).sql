-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	TempTable t1

-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

