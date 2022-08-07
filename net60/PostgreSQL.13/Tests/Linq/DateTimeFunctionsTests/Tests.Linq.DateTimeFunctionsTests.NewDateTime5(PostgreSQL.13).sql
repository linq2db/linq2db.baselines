BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((Lpad((Cast(Floor(Extract(year from p."DateTimeValue")) as int) + 1)::text,4,'0') || '-10-01') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(month from t.c1)) as int) = 10

