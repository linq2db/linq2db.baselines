-- DuckDB
SELECT
	CAST(p.ID AS UINTEGER) & 4294967289
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- DuckDB
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- DuckDB
SELECT
	CAST(p.ID AS UINTEGER) | 2147483649
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- DuckDB
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- DuckDB
SELECT
	xor(CAST(p.ID AS UINTEGER), 4294967295)
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- DuckDB
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- DuckDB
SELECT
	CAST(p.ID AS UINTEGER) & 2147483648
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- DuckDB
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- DuckDB
SELECT
	t.U & 4294967289
FROM
	UnsignedColumnTable t
ORDER BY
	t.Id

-- DuckDB
SELECT
	t1.Id,
	t1.U
FROM
	UnsignedColumnTable t1

