BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast(('2010-' || Lpad(p."ID"::text,2,'0') || '-01') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

