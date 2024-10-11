BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	it_1."Key_1"
FROM
	(
		SELECT
			True as "IsActive",
			CASE
				WHEN it."SmallIntValue" <> 0 THEN True
				ELSE False
			END as "Key_1"
		FROM
			"LinqDataTypes" it
	) it_1
GROUP BY
	it_1."IsActive",
	it_1."Key_1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

