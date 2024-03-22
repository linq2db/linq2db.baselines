BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(5) -- String
SET     @p = '2010-'

SELECT
	t."ID"
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(year from Cast((:p || Lpad(t."ID"::text,2,'0') || '-01') as Date))) as int) = 2010

