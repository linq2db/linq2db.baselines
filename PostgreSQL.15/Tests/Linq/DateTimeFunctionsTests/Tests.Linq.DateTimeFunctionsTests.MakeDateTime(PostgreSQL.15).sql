BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."ID"
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(year from Cast(('2010-' || Lpad(t."ID"::text,2,'0') || '-01') as Date))) as int) = 2010

