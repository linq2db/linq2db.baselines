BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ID,
	p.MoneyValue,
	p.DateTimeValue,
	p.BoolValue,
	p.GuidValue,
	p.BinaryValue,
	p.SmallIntValue,
	p.StringValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = toUUID('40932fdb-1543-4e4a-ac2c-ca371604fb4b')
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ID,
	p.MoneyValue,
	p.DateTimeValue,
	p.BoolValue,
	p.GuidValue,
	p.BinaryValue,
	p.SmallIntValue,
	p.StringValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = toUUID('d2f970c0-35ac-4987-9cd5-5badb1757436')
LIMIT 2

