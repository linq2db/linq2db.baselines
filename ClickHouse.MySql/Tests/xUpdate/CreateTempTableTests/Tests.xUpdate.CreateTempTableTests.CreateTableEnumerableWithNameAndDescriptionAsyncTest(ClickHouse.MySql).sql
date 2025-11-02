-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE IF NOT EXISTS TempTable
(
	Name String
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

INSERT INTO TempTable
(
	Name
)
VALUES
('John')

-- ClickHouse.MySql ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

