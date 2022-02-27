BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-01-01 00:00:00') as TimeStamp) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	Cast(Floor(Extract(day from p.c1)) as int) > 0

