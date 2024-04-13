BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + (-Interval '1 Day') * 7)
FROM
	"LinqDataTypes" t

