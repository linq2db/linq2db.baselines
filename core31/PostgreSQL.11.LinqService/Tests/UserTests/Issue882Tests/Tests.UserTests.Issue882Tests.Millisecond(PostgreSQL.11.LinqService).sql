BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(To_Char(t."DateTimeValue", 'MS') as int) % 7
FROM
	"LinqDataTypes" t

