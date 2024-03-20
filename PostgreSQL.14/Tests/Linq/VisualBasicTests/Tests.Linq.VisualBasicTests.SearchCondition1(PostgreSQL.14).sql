BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."BoolValue" = False AND (Cast(t."SmallIntValue" as Int) = 5 OR Cast(t."SmallIntValue" as Int) = 7 OR (Cast(t."SmallIntValue" as Int) | 2) = 10)

