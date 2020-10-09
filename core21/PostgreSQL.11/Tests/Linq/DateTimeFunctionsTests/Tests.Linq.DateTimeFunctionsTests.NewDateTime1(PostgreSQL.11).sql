BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	t.c1
FROM
	( 
		SELECT 
			Cast((Cast(Cast(Floor(Extract(year from p."DateTimeValue")) as int) as VarChar(11)) || '-10-1') as Date) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(Floor(Extract(month from t.c1)) as int) = 10

