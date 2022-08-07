BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO testdb1.DropTableTest
(
	ID
)
VALUES
(
	toInt32(123)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	testdb1.DropTableTest t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE testdb1.DropTableTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	testdb1.DropTableTest t1

