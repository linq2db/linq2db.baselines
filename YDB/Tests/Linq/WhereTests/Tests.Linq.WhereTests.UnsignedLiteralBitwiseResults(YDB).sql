-- YDB Ydb
SELECT
	Unwrap(CAST(p.ID AS Uint32)) & 4294967289u as c1
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
	Unwrap(CAST(p.ID AS Uint32)) | 2147483649u as c1
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
	Unwrap(CAST(p.ID AS Uint32)) ^ 4294967295u as c1
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
	Unwrap(CAST(p.ID AS Uint32)) & 2147483648u as c1
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
	t.U & 4294967289u as c1
FROM
	UnsignedColumnTable t
ORDER BY
	t.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.U as U
FROM
	UnsignedColumnTable t1

