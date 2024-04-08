BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(month From make_timestamp(Floor(Extract(year From t."DateTimeValue"))::Int, 10, 1, 20, 35, 44::Float)))::Int = 10

