-- PostgreSQL.18 PostgreSQL

SELECT
	g_1."GroupId",
	AVG(g_1."DataValue"),
	AVG(g_1."DataValue"),
	AVG(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	AVG(g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	AVG(DISTINCT g_1."DataValue"),
	AVG(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0),
	AVG(DISTINCT g_1."DataValue") FILTER (WHERE (g_1."DataValue"::decimal % 2)::decimal = 0)
FROM
	"AggregationData" g_1
WHERE
	g_1."DataValue" IS NOT NULL
GROUP BY
	g_1."GroupId"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

