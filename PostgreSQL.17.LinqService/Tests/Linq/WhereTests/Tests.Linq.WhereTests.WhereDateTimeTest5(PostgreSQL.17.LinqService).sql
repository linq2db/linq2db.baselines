BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
WHERE
	Date_Trunc('day', t1."DateTimeValue") = Date_Trunc('day', make_timestamp(2009, 9, 20, 0, 0, 0))

