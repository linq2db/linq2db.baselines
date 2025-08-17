BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
UPDATE
	BoolValue = true,
	DateTimeValue = now()
WHERE
	ID = 100000

