BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
	(CASE
		WHEN t."MoneyValue" - 4.5 = 0
			THEN False
		ELSE True
	END = False OR CASE
		WHEN t."MoneyValue" - 4.5 = 0
			THEN False
		ELSE True
	END IS NULL)

