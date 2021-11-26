BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Text(1) -- String
SET     @p_1 = '1'

SELECT
	Cast((Cast((2010 + t."ID") as text) || '-' || :p_1 || '-1') as Date)
FROM
	"LinqDataTypes" t

