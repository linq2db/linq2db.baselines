BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-10-1') as Date)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(month from Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as VarChar(11)) || '-10-1') as Date))) as int) = 10

