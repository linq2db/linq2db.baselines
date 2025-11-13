-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."GroupId",
	SUM(g_1."DataValue"),
	SUM(g_1."DataValue"),
	SUM(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	SUM(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	SUM(DISTINCT g_1."DataValue"),
	SUM(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	SUM(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

