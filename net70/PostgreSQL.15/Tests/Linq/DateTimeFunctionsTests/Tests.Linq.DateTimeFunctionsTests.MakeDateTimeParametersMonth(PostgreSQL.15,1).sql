BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p_1 Text(2) -- String
SET     @p_1 = '01'

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-' || :p_1 || '-01') as Date)
FROM
	"LinqDataTypes" t

