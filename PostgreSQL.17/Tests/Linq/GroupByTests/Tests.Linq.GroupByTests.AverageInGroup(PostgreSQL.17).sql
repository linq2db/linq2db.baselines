﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "AggregationData"
(
	"GroupId"   Int   NOT NULL,
	"DataValue" Float     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "AggregationData"
(
	"GroupId",
	"DataValue"
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	g_1."GroupId",
	AVG(g_1."DataValue"),
	AVG(g_1."DataValue"),
	AVG(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	AVG(CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT g_1."DataValue"),
	AVG(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
WHERE
	g_1."DataValue" IS NOT NULL
GROUP BY
	g_1."GroupId"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

