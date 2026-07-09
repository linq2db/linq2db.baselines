-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	Date_Trunc('day', t."DateTimeValue" + -Interval '1 Day' * 7)
FROM
	"LinqDataTypes" t

