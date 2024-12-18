BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	d."Day_2"
FROM
	(
		SELECT
			Floor(Extract(day From (Floor(Extract(year From t."DateTimeValue"))::Int || '-02-24 00:00:00')::TimeStamp))::Int as "Day_1",
			(Floor(Extract(year From t."DateTimeValue"))::Int || '-02-24 00:00:00')::TimeStamp as "Day_2"
		FROM
			"LinqDataTypes" t
	) d
WHERE
	d."Day_1" > 0 AND d."Day_1" IS NOT NULL

