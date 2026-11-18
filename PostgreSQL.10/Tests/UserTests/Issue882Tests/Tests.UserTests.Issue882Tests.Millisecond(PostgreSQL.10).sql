-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t

