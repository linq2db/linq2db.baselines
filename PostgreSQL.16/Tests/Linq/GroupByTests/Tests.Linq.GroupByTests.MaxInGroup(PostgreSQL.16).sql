﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_1."GroupId",
	MAX(g_1."DataValue"),
	MAX(g_1."DataValue"),
	MAX(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT g_1."DataValue"),
	MAX(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

