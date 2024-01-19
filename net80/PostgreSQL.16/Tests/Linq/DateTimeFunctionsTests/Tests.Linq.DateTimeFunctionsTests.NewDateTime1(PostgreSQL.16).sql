BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((Lpad(Cast(Floor(Extract(year from p."DateTimeValue")) as int)::text,4,'0') || '-10-01') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(month from t.c1)) as int) = 10

