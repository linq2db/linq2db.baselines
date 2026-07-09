-- PostgreSQL.18 PostgreSQL13

SELECT
	(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t

