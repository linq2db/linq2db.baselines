BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID"
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(year from Cast(('2010-' || Lpad(t."ID"::text,2,'0') || '-01 20:35:44') as TimeStamp))) as int) = 2010

