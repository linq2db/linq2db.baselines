-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DropTableTest

-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

INSERT INTO testdb1.DropTableTest
(
	ID
)
VALUES
(
	123
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	testdb1.DropTableTest t1

-- ClickHouse.Octonica ClickHouse

DROP TABLE testdb1.DropTableTest

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	testdb1.DropTableTest t1

