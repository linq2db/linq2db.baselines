-- DuckDB
SELECT
	Power(CAST(p.ID * 2 AS DOUBLE), 2)
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
	Power(CAST(p.ID + 1 AS DOUBLE), 2)
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
	Power(CAST(100 - p.ID AS DOUBLE), 2)
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
	Power(CAST(-p.ID AS DOUBLE), 2)
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
	-Power(CAST(p.ID AS DOUBLE), 2)
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
	Power(CAST(p.ID AS DOUBLE), -1)
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
	-Power(2, CAST(p.ID AS DOUBLE))
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

