BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Day_2"
FROM
	(
		SELECT
			Floor(Extract(day From (Floor(Extract(year From t."DateTimeValue"))::Int || '-01-01 00:00:00')::TimeStamp))::Int as "Day_1",
			(Floor(Extract(year From t."DateTimeValue"))::Int || '-01-01 00:00:00')::TimeStamp as "Day_2"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."Day_1" > 0 AND p."Day_1" IS NOT NULL

