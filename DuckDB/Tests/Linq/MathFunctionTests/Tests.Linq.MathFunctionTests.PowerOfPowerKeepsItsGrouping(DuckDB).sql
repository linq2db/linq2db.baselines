-- DuckDB
SELECT
	Power(2, Power(CAST(p.ID % 3 + 1 AS DOUBLE), 2))
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
	Power(Power(CAST(p.ID % 3 + 1 AS DOUBLE), 2), 3)
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

