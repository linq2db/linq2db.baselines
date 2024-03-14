BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t_1."ID"
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Cast(('2010-' || Lpad(t."ID"::text,2,'0') || '-01 20:35:44') as TimeStamp))) as int) as "Year_1",
			t."ID"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."Year_1" = 2010

