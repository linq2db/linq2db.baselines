BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(('2010-' || Cast(p."ID" as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" p
WHERE
	Cast(Floor(Extract(year from Cast(('2010-' || Cast(p."ID" as VarChar(11)) || '-1') as Date))) as int) = 2010

