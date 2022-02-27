BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(To_Char(t."DateTimeValue", 'MS') as int) % 7
FROM
	"LinqDataTypes" t

