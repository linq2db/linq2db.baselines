-- DuckDB
SELECT
	~p.ID
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
	~CAST(p.ID AS BIGINT)
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
	~p.SmallIntValue
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
	p.ID | -5
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
	xor(CAST(p.ID AS BIGINT), -6)
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
	p.ID & -3
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
	(p.ID & 6) - 10
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
	-(p.ID & 6)
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
	~(p.ID - 10)
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
	~(CAST(p.ID AS BIGINT) - 10)
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
	(~p.ID) - 10
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

