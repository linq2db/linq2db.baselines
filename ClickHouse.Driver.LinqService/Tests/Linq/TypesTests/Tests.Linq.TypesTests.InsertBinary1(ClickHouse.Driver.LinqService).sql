BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

