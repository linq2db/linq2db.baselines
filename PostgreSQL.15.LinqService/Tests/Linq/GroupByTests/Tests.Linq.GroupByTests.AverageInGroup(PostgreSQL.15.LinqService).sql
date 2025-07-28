BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	g_1."GroupId",
	AVG(g_1."DataValue"),
	AVG(g_1."DataValue"),
	AVG(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0::float8
			THEN g_1."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0::float8
			THEN g_1."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT g_1."DataValue"),
	AVG(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0::float8
			THEN g_1."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0::float8
			THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
WHERE
	g_1."DataValue" IS NOT NULL
GROUP BY
	g_1."GroupId"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

