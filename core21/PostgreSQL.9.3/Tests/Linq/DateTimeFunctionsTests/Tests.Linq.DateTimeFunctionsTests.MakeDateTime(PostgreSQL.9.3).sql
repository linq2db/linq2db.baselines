BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Cast(('2010-' || Cast(p."ID" as VarChar(11)) || '-1') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(year from t.c1)) as int) = 2010

