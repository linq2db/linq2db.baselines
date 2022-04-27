BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast((2010 + t."ID") as VarChar(11)) || '-01-01') as Date)
FROM
	"LinqDataTypes" t

