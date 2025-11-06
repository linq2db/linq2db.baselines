-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."GroupId",
	MIN(g_1."DataValue"),
	MIN(g_1."DataValue"),
	MIN(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	MIN(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	MIN(DISTINCT g_1."DataValue"),
	MIN(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	MIN(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

