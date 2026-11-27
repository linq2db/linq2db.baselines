-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(p."MoneyValue")::Int / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN p."MoneyValue" > 5 THEN 1
		ELSE 2
	END / 2
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*) FILTER (WHERE g_1."MoneyValue" > 0) / 2
FROM
	"LinqDataTypes" g_1
GROUP BY
	g_1."BoolValue"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

