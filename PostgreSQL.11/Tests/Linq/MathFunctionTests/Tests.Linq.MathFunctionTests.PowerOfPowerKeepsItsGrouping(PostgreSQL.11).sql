-- PostgreSQL.11 PostgreSQL
SELECT
	Power(2, Power((Floor(p."ID"::decimal % 3)::Int + 1)::Float, 2))
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	Power(Power((Floor(p."ID"::decimal % 3)::Int + 1)::Float, 2), 3)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	Power(2, Power((Floor(p."ID"::decimal % 3)::Int + 1)::decimal::Float, 2::Float)::decimal)
FROM
	"LinqDataTypes" p
ORDER BY
	p."ID"

-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	Power(2, Power((Floor(p."Value1"::decimal % 3)::Int + 1)::Float, 2))
FROM
	"Parent" p
WHERE
	p."Value1" IS NOT NULL
ORDER BY
	p."ParentID"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

