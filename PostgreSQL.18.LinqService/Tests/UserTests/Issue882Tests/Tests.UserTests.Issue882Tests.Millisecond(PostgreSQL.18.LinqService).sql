BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	(To_Char(t."DateTimeValue", 'MS')::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t

