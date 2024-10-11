BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "AggregationData"
(
	"GroupId"   Int   NOT NULL,
	"DataValue" Float     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1",
	t1."COUNT_1",
	t1."COUNT_2",
	t1."COUNT_3",
	t1."COUNT_4",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					x."DataValue" as "DistinctWithFilter"
				FROM
					"AggregationData" x
				WHERE
					x."DataValue" IS NOT NULL AND t1."Key_1" = x."GroupId"
			) x_1
		WHERE
			(x_1."DistinctWithFilter"::decimal % 2)::decimal = 0
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					t."DataValue"
				FROM
					"AggregationData" t
				WHERE
					t."DataValue" IS NOT NULL AND t1."Key_1" = t."GroupId" AND
					(t."DataValue"::decimal % 2)::decimal = 0
			) t2
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					x_2."DataValue" as "FilterDistinctWithFilter"
				FROM
					"AggregationData" x_2
				WHERE
					x_2."DataValue" IS NOT NULL AND t1."Key_1" = x_2."GroupId" AND
					(x_2."DataValue"::decimal % 2)::decimal = 0
			) x_3
		WHERE
			(x_3."FilterDistinctWithFilter"::decimal % 2)::decimal = 0
	),
	t1."COUNT_5",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					t_1."DataValue"
				FROM
					"AggregationData" t_1
				WHERE
					t_1."DataValue" IS NOT NULL AND t1."Key_1" = t_1."GroupId" AND
					(t_1."DataValue"::decimal % 2)::decimal = 0
			) t3
	)
FROM
	(
		SELECT
			g_1."GroupId" as "Key_1",
			COUNT(*) as "COUNT_1",
			COUNT(CASE
				WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN 1
				ELSE NULL
			END) as "COUNT_2",
			COUNT(*) as "COUNT_3",
			COUNT(DISTINCT g_1."DataValue") as "COUNT_4",
			COUNT(CASE
				WHEN (g_1."DataValue"::decimal % 2)::decimal = 0 THEN 1
				ELSE NULL
			END) as "COUNT_5"
		FROM
			"AggregationData" g_1
		WHERE
			g_1."DataValue" IS NOT NULL
		GROUP BY
			g_1."GroupId"
	) t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."GroupId",
	t1."DataValue"
FROM
	"AggregationData" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "AggregationData"

