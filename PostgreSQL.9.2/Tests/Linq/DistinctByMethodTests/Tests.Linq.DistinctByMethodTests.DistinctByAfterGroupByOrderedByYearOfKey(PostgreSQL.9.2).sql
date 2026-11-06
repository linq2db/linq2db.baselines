-- PostgreSQL.9.2 PostgreSQL
SELECT DISTINCT ON (g_2."Year_1")
	g_2."Key_1",
	COUNT(*)
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
ORDER BY
	g_2."Year_1" DESC,
	g_2."Key_1" DESC

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

