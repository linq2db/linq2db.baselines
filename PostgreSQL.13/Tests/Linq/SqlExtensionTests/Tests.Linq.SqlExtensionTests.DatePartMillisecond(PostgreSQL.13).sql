-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(To_Char(t."DateTimeValue", 'MS') as int)
FROM
	"LinqDataTypes" t

