BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-10-01') as Date)
FROM
	"LinqDataTypes" t

