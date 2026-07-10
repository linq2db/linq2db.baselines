-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	Cast(To_Char(t."DateTimeValue", 'MS') as int)
FROM
	"LinqDataTypes" t

