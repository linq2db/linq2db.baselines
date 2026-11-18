-- PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN p."MoneyValue" >= 0 THEN FLOOR(p."MoneyValue" * POWER(10, 5) + 0.5) / POWER(10, 5)
		ELSE CEIL(p."MoneyValue" * POWER(10, 5) - 0.5) / POWER(10, 5)
	END + p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue" <> 0
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

-- PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN p."MoneyValue" * 2 = ROUND(p."MoneyValue" * 2, 5) AND p."MoneyValue" <> ROUND(p."MoneyValue", 5)
			THEN ROUND(p."MoneyValue" / 2, 5) * 2
		ELSE ROUND(p."MoneyValue", 5)
	END + p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	p."MoneyValue" <> 0
ORDER BY
	p."ID"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

