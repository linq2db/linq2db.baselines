BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	d.c1
FROM
	( 
		SELECT 
			Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-02-24 00:00:00') as TimeStamp) as c1
		FROM
			"LinqDataTypes" t
	) d
WHERE
	Cast(Floor(Extract(day from d.c1)) as int) > 0

