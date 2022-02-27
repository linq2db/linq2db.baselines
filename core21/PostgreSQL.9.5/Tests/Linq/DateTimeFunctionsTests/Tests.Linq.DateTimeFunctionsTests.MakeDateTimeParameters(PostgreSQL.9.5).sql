BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @ID Text(5) -- String
SET     @ID = '2010-'

SELECT
	t.c1
FROM
	(
		SELECT
			Cast((:ID || Cast(p."ID" as VarChar(11)) || '-1') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

