BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-01-01') as Date)
FROM
	"LinqDataTypes" t

