BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t

