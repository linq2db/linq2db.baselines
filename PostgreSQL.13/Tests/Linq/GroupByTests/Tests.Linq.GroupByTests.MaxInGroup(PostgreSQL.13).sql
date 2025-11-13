-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."GroupId",
	MAX(g_1."DataValue"),
	MAX(g_1."DataValue"),
	MAX(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	MAX(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	MAX(DISTINCT g_1."DataValue"),
	MAX(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	MAX(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0)
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

