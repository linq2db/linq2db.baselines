﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	g_1."GroupId",
	SUM(g_1."DataValue"),
	SUM(g_1."DataValue"),
	SUM(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT g_1."DataValue"),
	SUM(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

