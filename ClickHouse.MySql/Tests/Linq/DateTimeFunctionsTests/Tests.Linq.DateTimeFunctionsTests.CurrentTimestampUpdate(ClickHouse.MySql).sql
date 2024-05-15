BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BoolValue = true,
	DateTimeValue = now()
WHERE
	ID = 100000

