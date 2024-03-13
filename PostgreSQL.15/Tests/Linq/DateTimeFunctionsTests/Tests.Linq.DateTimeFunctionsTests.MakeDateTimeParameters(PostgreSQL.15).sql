BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(5) -- String
SET     @p = '2010-'

SELECT
	t_1."ID"
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Cast((:p || Lpad(t."ID"::text,2,'0') || '-01') as Date))) as int) as "Year_1",
			t."ID"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."Year_1" = 2010

