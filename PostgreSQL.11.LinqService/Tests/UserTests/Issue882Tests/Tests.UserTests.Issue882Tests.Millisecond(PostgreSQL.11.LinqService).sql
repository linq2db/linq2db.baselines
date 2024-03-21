BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Cast(Cast(To_Char(t."DateTimeValue", 'MS') as int) as decimal) % 7) as Int)
FROM
	"LinqDataTypes" t

