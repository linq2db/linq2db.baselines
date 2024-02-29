BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast((Lpad((2010 + t."ID")::text,4,'0') || '-10-01') as Date)
FROM
	"LinqDataTypes" t

