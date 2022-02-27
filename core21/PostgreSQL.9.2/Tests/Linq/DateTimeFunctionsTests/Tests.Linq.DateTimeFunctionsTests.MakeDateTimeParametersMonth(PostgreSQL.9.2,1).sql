BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Text(1) -- String
SET     @p_1 = '1'

SELECT
	Cast((Cast((2010 + t."ID") as VarChar(11)) || '-' || :p_1 || '-1') as Date)
FROM
	"LinqDataTypes" t

