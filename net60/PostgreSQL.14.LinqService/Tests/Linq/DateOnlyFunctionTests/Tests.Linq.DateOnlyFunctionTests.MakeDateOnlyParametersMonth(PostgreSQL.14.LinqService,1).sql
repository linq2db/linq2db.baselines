BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-01-01') as Date)
FROM
	"LinqDataTypes" t

