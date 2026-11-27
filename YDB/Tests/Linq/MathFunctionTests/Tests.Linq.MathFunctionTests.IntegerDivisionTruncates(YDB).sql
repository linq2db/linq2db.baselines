-- YDB Ydb
SELECT
	(p.ID * 7 + 1) / 2 as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	(p.ID * -7 - 1) / 2 as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	(p.ID * 7 + 1) / (p.ID - 100) as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	(Unwrap(CAST(p.ID AS Int64)) * 9 + 2l) / 4l as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	(Unwrap(CAST(p.ID AS Uint32)) * 7 + 1u) / 2u as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	(Unwrap(CAST(p.ID AS Uint64)) * 9 + 2ul) / 4ul as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	p.ID as ID
FROM
	LinqDataTypes p
WHERE
	((Unwrap(CAST(p.ID AS Uint64)) * 9 + 2ul) / 4ul) * 4ul = Unwrap(CAST(p.ID AS Uint64)) * 9 + 2ul
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	(p.ID * 7 + 1) / 2 as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
DECLARE divisor Int32
SET     divisor = 4

SELECT
	(p.ID * 9 + 2) / $divisor as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	-(p.ID * 7 + 1) as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	p.ID as ID
FROM
	LinqDataTypes p
WHERE
	((p.ID * 7 + 1) / 2) * 2 = p.ID * 7 + 1
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	Unwrap(CAST((p.ID * 7 + 1) / 2 AS Text)) as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	Unwrap(CAST(p.ID AS Double)) / 2 as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb
SELECT
	Unwrap(CAST(p.ID AS Decimal(22,9))) / 2 as c1
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

