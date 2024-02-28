BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(2) -- String
SET     @p = '10'

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-' || :p || '-01') as Date)
FROM
	"LinqDataTypes" t

