BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(2) -- String
SET     @p = '01'

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-' || :p || '-01') as Date)
FROM
	"LinqDataTypes" t

