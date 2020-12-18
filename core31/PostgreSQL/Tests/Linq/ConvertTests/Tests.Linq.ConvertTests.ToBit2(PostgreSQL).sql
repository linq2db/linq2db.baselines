BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
	CASE
		WHEN t."MoneyValue" <> 4.5
			THEN True
		ELSE False
	END = False

