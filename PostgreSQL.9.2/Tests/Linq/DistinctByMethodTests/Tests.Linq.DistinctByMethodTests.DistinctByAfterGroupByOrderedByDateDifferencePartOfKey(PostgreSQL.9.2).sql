-- PostgreSQL.9.2 PostgreSQL
DECLARE @baseDate Timestamp -- DateTime2
SET     @baseDate = '2000-01-01'::date

SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (g_3."Year_1" > 0)
			g_3."TotalDays",
			g_3."Key_1",
			g_3."Count_1"
		FROM
			(
				SELECT
					g_2."Year_1",
					Extract(epoch From (g_2."Key_1" - :baseDate)) / 86400 as "TotalDays",
					g_2."Key_1",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							g_1."DateTimeValue" as "Key_1",
							Floor(Extract(year From g_1."DateTimeValue"))::Int as "Year_1"
						FROM
							"LinqDataTypes" g_1
					) g_2
				GROUP BY
					g_2."Key_1",
					g_2."Year_1"
			) g_3
		ORDER BY
			g_3."Year_1" > 0,
			g_3."TotalDays",
			g_3."Key_1" DESC
	) t1
ORDER BY
	t1."TotalDays",
	t1."Key_1" DESC

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

