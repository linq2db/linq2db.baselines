BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast((2010 + t."ID") as VarChar(11)) || '-1-1') as Date)
FROM
	"LinqDataTypes" t

