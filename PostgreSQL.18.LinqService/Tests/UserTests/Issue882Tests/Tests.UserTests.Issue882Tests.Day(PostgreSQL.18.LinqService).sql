BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(Floor(Extract(day From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t

