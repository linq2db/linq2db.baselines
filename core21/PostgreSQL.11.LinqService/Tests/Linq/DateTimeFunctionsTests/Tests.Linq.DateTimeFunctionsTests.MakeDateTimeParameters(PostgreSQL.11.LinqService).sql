BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Text(5) -- String
SET     @p1 = '2010-'

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((:p1 || Cast(p."ID" as VarChar(11)) || '-1') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

