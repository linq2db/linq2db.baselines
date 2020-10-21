BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(('2010-' || Cast(p."ID" as VarChar(11)) || '-1 20:35:44') as TimeStamp)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(year from Cast(('2010-' || Cast(p."ID" as VarChar(11)) || '-1 20:35:44') as TimeStamp))) as int) = 2010

