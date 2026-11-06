-- PostgreSQL.19 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = -6

SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (g_3."Year_1")
			g_3.c1,
			g_3."Key_1",
			g_3."Count_1"
		FROM
			(
				SELECT
					g_2."Year_1",
					g_2."Key_1" + :p * Interval '1 Hour' as c1,
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
			g_3."Year_1",
			g_3.c1 DESC
	) t1
ORDER BY
	t1.c1 DESC

-- PostgreSQL.19 PostgreSQL12
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

