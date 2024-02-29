BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
UPDATE
	BoolValue = true,
	DateTimeValue = now()
WHERE
	ID = toInt32(100000)

