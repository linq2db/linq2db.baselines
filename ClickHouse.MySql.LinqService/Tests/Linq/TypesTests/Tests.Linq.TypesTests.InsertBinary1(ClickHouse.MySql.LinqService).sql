BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BinaryValue,
	BoolValue
)
VALUES
(
	1001,
	NULL,
	true
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

