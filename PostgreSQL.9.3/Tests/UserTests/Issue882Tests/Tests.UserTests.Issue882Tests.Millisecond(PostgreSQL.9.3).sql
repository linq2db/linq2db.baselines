-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t

