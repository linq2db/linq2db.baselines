-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

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
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7)

-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

