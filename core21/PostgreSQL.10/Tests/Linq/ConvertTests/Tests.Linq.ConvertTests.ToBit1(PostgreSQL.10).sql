BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
		WHEN t."MoneyValue" = 0 THEN False
		ELSE True
	END = True AND CASE
		WHEN t."MoneyValue" = 0 THEN False
		ELSE True
	END IS NOT NULL)

