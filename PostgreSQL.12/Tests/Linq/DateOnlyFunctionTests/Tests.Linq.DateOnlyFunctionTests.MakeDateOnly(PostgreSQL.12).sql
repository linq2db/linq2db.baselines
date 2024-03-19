BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t_1."ID"
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Cast(('2010-' || Lpad(t."ID"::text,2,'0') || '-01') as Date))) as int) as "Year_1",
			t."ID"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."Year_1" = 2010

