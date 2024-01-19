BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	toInt32(123)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE DropTableTest

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

