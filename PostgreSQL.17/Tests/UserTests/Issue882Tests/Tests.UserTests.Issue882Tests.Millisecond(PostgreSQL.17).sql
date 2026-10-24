-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t

