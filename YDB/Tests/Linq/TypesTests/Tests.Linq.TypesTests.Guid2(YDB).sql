-- YDB Ydb

SELECT
	p.ID as ID,
	p.MoneyValue as MoneyValue,
	p.DateTimeValue as DateTimeValue,
	p.BoolValue as BoolValue,
	p.GuidValue as GuidValue,
	p.BinaryValue as BinaryValue,
	p.SmallIntValue as SmallIntValue,
	p.StringValue as StringValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = Uuid('40932fdb-1543-4e4a-ac2c-ca371604fb4b')
LIMIT 2

-- YDB Ydb

SELECT
	p.ID as ID,
	p.MoneyValue as MoneyValue,
	p.DateTimeValue as DateTimeValue,
	p.BoolValue as BoolValue,
	p.GuidValue as GuidValue,
	p.BinaryValue as BinaryValue,
	p.SmallIntValue as SmallIntValue,
	p.StringValue as StringValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue = Uuid('d2f970c0-35ac-4987-9cd5-5badb1757436')
LIMIT 2

