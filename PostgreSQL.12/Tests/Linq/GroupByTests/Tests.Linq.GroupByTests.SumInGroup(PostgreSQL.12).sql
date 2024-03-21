﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AggregationData"
(
	"GroupId"   Int   NOT NULL,
	"DataValue" Float     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."GroupId",
	SUM(g_1."DataValue"),
	SUM(g_1."DataValue"),
	SUM(CASE
		WHEN Cast((Cast(g_1."DataValue" as decimal) % 2) as Float) = 0
			THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(CASE
		WHEN Cast((Cast(g_1."DataValue" as decimal) % 2) as Float) = 0
			THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT g_1."DataValue"),
	SUM(DISTINCT CASE
		WHEN Cast((Cast(g_1."DataValue" as decimal) % 2) as Float) = 0
			THEN g_1."DataValue"
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN Cast((Cast(g_1."DataValue" as decimal) % 2) as Float) = 0
			THEN g_1."DataValue"
		ELSE NULL
	END)
FROM
	"AggregationData" g_1
GROUP BY
	g_1."GroupId"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

