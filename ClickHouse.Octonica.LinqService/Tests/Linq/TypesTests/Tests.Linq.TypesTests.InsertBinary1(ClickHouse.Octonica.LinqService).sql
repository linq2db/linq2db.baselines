BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

