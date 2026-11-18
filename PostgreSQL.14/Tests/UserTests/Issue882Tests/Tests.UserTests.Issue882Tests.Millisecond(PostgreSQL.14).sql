-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t

