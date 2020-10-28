BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Text(1) -- String
SET     @p1 = '1'

SELECT
	Cast((Cast((2010 + t."ID") as VarChar(11)) || '-' || :p1 || '-1') as Date)
FROM
	"LinqDataTypes" t

