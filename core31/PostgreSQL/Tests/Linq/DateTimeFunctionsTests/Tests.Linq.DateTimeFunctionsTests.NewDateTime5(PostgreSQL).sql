BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast((Cast(Floor(Extract(year from p."DateTimeValue")) as int) + 1) as VarChar(11)) || '-10-1') as Date)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(month from Cast((Cast((Cast(Floor(Extract(year from p."DateTimeValue")) as int) + 1) as VarChar(11)) || '-10-1') as Date))) as int) = 10

