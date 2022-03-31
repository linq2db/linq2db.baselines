BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Text(5) -- String
SET     @p_1 = '2010-'

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((:p_1 || Cast(p."ID" as VarChar(4000)) || '-1') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

