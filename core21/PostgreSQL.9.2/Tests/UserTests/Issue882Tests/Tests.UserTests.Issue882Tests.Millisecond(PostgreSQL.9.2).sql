BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Cast(To_Char(t."DateTimeValue", 'MS') as int) % 7
FROM
	"LinqDataTypes" t

