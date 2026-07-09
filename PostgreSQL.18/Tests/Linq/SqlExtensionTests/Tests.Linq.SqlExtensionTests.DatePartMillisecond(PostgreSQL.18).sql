-- PostgreSQL.18 PostgreSQL13

SELECT
	Cast(To_Char(t."DateTimeValue", 'MS') as int)
FROM
	"LinqDataTypes" t

