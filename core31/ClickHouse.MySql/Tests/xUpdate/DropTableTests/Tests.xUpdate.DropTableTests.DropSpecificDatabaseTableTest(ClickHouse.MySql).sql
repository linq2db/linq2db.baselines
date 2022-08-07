BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO testdb3.DropTableTest
(
	ID
)
VALUES
(
	toInt32(123)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	testdb3.DropTableTest t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE testdb3.DropTableTest

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	testdb3.DropTableTest t1

