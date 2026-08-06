-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t

