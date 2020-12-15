BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	d.c1
FROM
	(
		SELECT
			t."DateTimeValue" as c1
		FROM
			"LinqDataTypes" t
	) d
WHERE
	Cast(Floor(Extract(day from d.c1)) as int) > 0

