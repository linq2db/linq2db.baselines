BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast((2010 + t."ID") as VarChar(11)) || '-10-1') as Date)
FROM
	"LinqDataTypes" t

