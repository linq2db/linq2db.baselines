BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	d."Date_1"
FROM
	(
		SELECT
			Floor(Extract(day From t."DateTimeValue"))::Int as "Day_1",
			Date_Trunc('day', t."DateTimeValue") as "Date_1"
		FROM
			"LinqDataTypes" t
	) d
WHERE
	d."Day_1" > 0 AND d."Day_1" IS NOT NULL

