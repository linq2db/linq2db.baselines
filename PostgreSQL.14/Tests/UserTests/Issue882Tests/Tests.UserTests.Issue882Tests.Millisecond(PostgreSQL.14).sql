-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t

